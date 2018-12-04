################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
###############################################################################
function installbuildrpm()
{
	kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
	msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
	if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ];
	then
		echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
		rpm -ivh $kmodrpm $msrpm
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
function installKernel()
{
	regex=$1
	i=$2
	kernelver=`uname -r`
	if [[ "$kernelver" =~ $regex ]];
	then
        	cd "update${i}"
		installbuildrpm
	elif [ "$kernelver" == "3.10.0-862.el7.x86_64" ]; 
	then
		installbuildrpm
	fi
} # End function

function upgradebuildrpm()
{
    kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
    msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
    if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ];
    then
	    rpm -Uvh $kmodrpm $msrpm
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

function upgradeKernel()
{
    kernelver=`uname -r`
    regex=$1
	i=$2
    if [[ "$kernelver" =~ $regex ]]; 
    then
    	cd  "update${i}"
	upgradebuildrpm
    elif [ "$kernelver" == "3.10.0-862.el7.x86_64" ] ;then
	upgradebuildrpm
    fi
}

