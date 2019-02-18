#################################################################
# This script is to automate Upgradation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################
kernelver=`uname -r`
regex1='3.10.0-957.1.3.el7.x86_64'
regex2='3.10.0-957.5.1.el7.x86_64'

source ../commonfunctions.sh

if [[ "$kernelver" =~ $regex1 ]]; then	        
	upgradebuildrpm 1
elif [[ "$kernelver" =~ $regex2 ]]; then
        upgradebuildrpm 2
elif [ "$kernelver" == "3.10.0-957.el7.x86_64" ] ;then
	checkrpms
	upgradebuildrpm   
else
        echo "Kernel version not supported, Exiting."
        exit 1
fi

