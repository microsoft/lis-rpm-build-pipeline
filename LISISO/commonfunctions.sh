################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
###############################################################################
distro_package_name=RPMS

GetDistroName()
{
	linuxString=$(grep -ihs "CentOS\|Red Hat Enterprise Linux" /etc/redhat-release)
	OracleDistroName=$(grep -ihs "Oracle" /etc/oracle-release)
	if [[ $OracleDistroName == *Oracle* ]]; then
        	distro_name="Oracle"
    	else
        	case $linuxString in
                	*CentOS*)
                    		distro_name=CentOS
                	;;
                	*Red*)
                    		distro_name=RHEL
                	;;
                	*)
                		distro_name=unknown
                		return 1
                	;;
        	esac
    	fi
	return 0

}

#
# The grouping of the regular expression using () will
# result in the following BASH_REMATCH matches:
#    BASE_REMATCH[0] = 2.6.18-398
#    BASE_REMATCH[1] = 2.6.18
#    BASE_REMATCH[2] = 398
#
GetDistroVersion()
{
	kernelVersionString=$(uname -r)
	regex='([0-9]+\.[0-9]+\.[0-9]+)-([0-9]+)'

	if [[ "${kernelVersionString}" =~ $regex  ]]; then
		kernelVersion=${BASH_REMATCH[1]}
		kernelChange=${BASH_REMATCH[2]}

		#
		# If a 5.x kernel
		#
		if [ "2.6.18" == ${kernelVersion} ]; then
			if [ ${kernelChange} -ge 419 ]; then
                                distro_version='unknown'
			elif [ ${kernelChange} -ge 411 ]; then
				distro_version='511_UPDATE'
			elif [ ${kernelChange} -ge 398 ]; then
				distro_version='511'
			elif [ ${kernelChange} -ge 371 ]; then
				distro_version='510'
			elif [ ${kernelChange} -ge 348 ]; then
				distro_version='59'
			elif [ ${kernelChange} -ge 308 ]; then
				distro_version='58'
			elif [ ${kernelChange} -ge 274 ]; then
				distro_version='57'
			elif [ ${kernelChange} -ge 238 ]; then
				distro_version='56'
			elif [ ${kernelChange} -ge 194 ]; then
				distro_version='55'
			elif [ ${kernelChange} -ge 164 ]; then
				distro_version='54'
			elif [ ${kernelChange} -ge 128 ]; then
				distro_version='53'
			elif [ ${kernelChange} -ge 92 ]; then
				distro_version='52'
			else
				echo "Error: Unknown 5.x kernel change: '${kernelChange}'"
				return 1
			fi
		#
		# If a 6.x kernel
		#
		elif [ "2.6.32" == ${kernelVersion} ]; then
			if [ ${kernelChange} -ge 755 ]; then
                                distro_version='unknown'
			elif [ ${kernelChange} -ge 754 ]; then
                                distro_version='610'
			elif [ ${kernelChange} -ge 696 ]; then
				distro_version='69'
			elif [ ${kernelChange} -ge 642 ]; then
				distro_version='68'
			elif [ ${kernelChange} -ge 573 ]; then
				distro_version='67'
			elif [ ${kernelChange} -ge 504 ]; then
				distro_version='66'
			elif [ ${kernelChange} -ge 431 ]; then
				distro_version='65'
			elif [ ${kernelChange} -ge 358 ]; then
				distro_version='64'
			elif [ ${kernelChange} -ge 279 ]; then
				distro_version='63'
			elif [ ${kernelChange} -ge 220 ]; then
				distro_version='62'
			elif [ ${kernelChange} -ge 131 ]; then
				distro_version='61'
			elif [ ${kernelChange} -ge 71 ]; then
				distro_version='60'
			else
				echo "Error: Unknown 6.x kernel change:  '${kernelChange}'"
				return 1
			fi
		#
		# If a 7.x kernel
		#
		elif [ "3.10.0" == ${kernelVersion} ]; then
			if [ ${kernelChange} -ge 958 ]; then
                                distro_version='unknown'
			elif [ ${kernelChange} -ge 957 ]; then
                                distro_version='76'
			elif [ ${kernelChange} -ge 862 ]; then
                                distro_version='75'
			elif [ ${kernelChange} -ge 693 ]; then
                                distro_version='74'
			elif [ ${kernelChange} -ge 514 ]; then
				distro_version='73'
			elif [ ${kernelChange} -ge 324 ]; then
				distro_version='72'
			elif [ ${kernelChange} -ge 229 ]; then
				distro_version='71'
			elif [ ${kernelChange} -ge 123 ]; then
                                distro_version='70'
			else
				echo "Error: Unknown 7.x kernel change: '${kernelChange}'"
				return 1
			fi
		else
			# Not a 2.6.18, 2.6.32, or 3.10.0 kernel - unsupported kernel version
			echo "Error: Unknown kernel version: '${kernelVersion}'"
			return 1
		fi
	fi
}

CheckSupportOracleDistro()
{
	OracleDistroVersion=[52,53,54,55,56,57,58,59,510,511,60,61,62,63]
	if [[ ${OracleDistroVersion[*]} =~ $distro_version ]] ; then
	        return 1
	fi
	return 0
}

RemoveHypervDaemons()
{
	echo "Removing Hyper-V daemons"

	#
	# Try remove hyperv-daemons
	#
	rpm -q hyperv-daemons &> /dev/null
	if [ $? -eq 0 ]; then
		echo "Removing the hyperv-daemons package"
		rpm -e hyperv-daemons &> /dev/null
		if [ $? -ne 0 ]; then
			echo "Unable to remove the hyperv-daemons package"
			echo "Remove the daemon with the command 'rpm -e hyperv-daemons' and try the install again"
			exit 1
		fi
	fi

        # Try removing the hypervfcopy package
        #
        rpm -q hypervfcopyd &> /dev/null
        if [ $? -eq 0 ]; then
                echo "Removing the hypervfcopyd package"
                rpm -e hypervfcopyd  &> /dev/null
                if [ $? -ne 0 ]; then
                        echo "Unable to remove the hypervfcopyd package"
                        echo "Remove the daemon with the command 'rpm -e hypervfcopyd and try the install again"
                        exit 1
                fi
        fi
	

	#
	# Try removing hypervkvpd
	#
	rpm -q hypervkvpd &> /dev/null
	if [ $? -eq 0 ]; then
		echo "Removing the hypervkvpd package"
		rpm -e hypervkvpd &> /dev/null
		if [ $? -ne 0 ]; then
			echo "Unable to remove the hypervkvpd package"
			echo "Remove the daemon with the command 'rpm -e hypervkvpd' and try the install again"
			exit 1
		fi
	fi

	#
	# Try removing the hypervvssd package
	#
	rpm -q hypervvssd &> /dev/null
	if [ $? -eq 0 ]; then
		echo "Removing the hypervvssd package"
		rpm -e hypervvssd &> /dev/null
		if [ $? -ne 0 ]; then
			echo "Unable to remove the hypervvssd package"
			echo "Remove the daemon with the command 'rpm -e hypervvssd' and try the install again"
			exit 1
		fi
	fi

	#
        # Try remove hyperv-daemons-license
        #
        rpm -q hyperv-daemons-license &> /dev/null
        if [ $? -eq 0 ]; then
                echo "Removing the hyperv-daemons-license package"
                rpm -e hyperv-daemons-license &> /dev/null
                if [ $? -ne 0 ]; then
                        echo "Unable to remove the hyperv-daemons-license package"
                        echo "Remove the package with the command 'rpm -e hyperv-daemons-license' and try the install again"
                        exit 1
                fi
        fi


}

RemoveHypervTools()
{
	echo "Removing Hyper-V Tools"

	#
	# Try remove hyperv-Tools
	#
	rpm -q hyperv-tools &> /dev/null
	if [ $? -eq 0 ]; then
		echo "Removing the hyperv-tools package"
		rpm -e hyperv-tools &> /dev/null
		if [ $? -ne 0 ]; then
			echo "Unable to remove the hyperv-tools package"
			echo "Remove the hyperv-tools with the command 'rpm -e hyperv-tools' and try the install again"
			exit 1
		fi
	fi
}


function installbuildrpm()
{
	i=$1
	cd "update${i}" &> /dev/null
	kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
	msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
	if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ];
	then
		echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
		rpm -ivh $kmodrpm $msrpm 2>&1 | grep -v "mlx5_ib"
		kmodexit=$?
		if [ "$kmodexit" != 0 ]; then
			echo "Microsoft-Hyper-V RPM installation failed, Exiting."
            		exit 1
		else
			echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
			exit 0
		fi
	fi
}

function upgradebuildrpm()
{
	i=$1
	cd "update${i}" &> /dev/null
	kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
	msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
	if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ];
	then
		rpm -Uvh $kmodrpm $msrpm 2>&1 | grep -v "mlx5_ib"
	        msexit=$?
        	if [ "$msexit" != 0 ]; then
	    		echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
		        exit 1
            	else
	        	echo "Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
			exit 0
        	fi
	fi
}

function checkrpms()
{
	kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
		echo "RPM's are available"
	else
		echo "RPM's are missing"
	fi
}
