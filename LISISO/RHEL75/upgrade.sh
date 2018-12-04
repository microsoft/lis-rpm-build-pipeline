#################################################################
# This script is to automate Upgradation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################
i=0
function upgradeKernel()
{
	i=$((i+1))	
	kernelver=`uname -r`
	regex=$1
	if [[ "$kernelver" =~ $regex ]]; then
	        cd  "update${i}"
	        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
	        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        	if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
		        rpm -Uvh $kmodrpm $msrpm
		        msexit=$?
		        if [ "$msexit" != 0 ]; then
		               echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
		               exit 1;
		        else
		               echo "Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
	  	        fi
	        fi
	# Making sure both rpms are present
	elif [ "$kernelver" == "3.10.0-862.el7.x86_64" ] ;then
		kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        	msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
	        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
		        echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
			rpm -Uvh $kmodrpm $msrpm
		        msexit=$?
		        if [ "$msexit" != 0 ]; then
		               echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
		               exit 1;
		        else
		               echo "Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
      			fi
		else 
       			echo "RPM's are missing"
		fi
	fi
}

upgradeKernel '3.10.0-862.2.3' 
upgradeKernel '3.10.0-862.3.2' 
upgradeKernel '3.10.0-862.3.3' 
upgradeKernel '3.10.0-862.6.3' 
upgradeKernel '3.10.0-862.9.1' 
upgradeKernel '3.10.0-862.11.6' 
upgradeKernel '3.10.0-862.14.4'

echo "Kernel version not supported, Exiting."
exit 1

