################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################

# Determine kernel architecture version 
osbit=`uname -m`
kernelver=`uname -r`

regex1='3.10.0-693.2.2'
regex2='3.10.0-693.5.2'
regex3='3.10.0-693.11.1'
regex4='3.10.0-693.11.6'
regex5='3.10.0-693.17.1'
regex6='3.10.0-693.21.1'
regex7='3.10.0-693.25.2'
regex8='3.10.0-693.25.4'
regex9='3.10.0-693.25.7'
regex10='3.10.0-693.43.1'
regex11='3.10.0-693.44.1'

source ../commonfunctions.sh

if [[ "$kernelver" =~ $regex1 ]]; then
	upgradebuildrpm 1   
elif [[ "$kernelver" =~ $regex2 ]] ; then
	upgradebuildrpm 2   
elif [[ "$kernelver" =~ $regex3 ]] ; then
	upgradebuildrpm 3   
elif [[ "$kernelver" =~ $regex4 ]] ; then
	upgradebuildrpm 4   
elif [[ "$kernelver" =~ $regex5 ]] ; then
	upgradebuildrpm 5   
elif [[ "$kernelver" =~ $regex6 ]] ; then
	upgradebuildrpm 6   
elif [[ "$kernelver" =~ $regex7 ]] ; then
	upgradebuildrpm 7   
elif [[ "$kernelver" =~ $regex8 ]] ; then
	upgradebuildrpm 8   
elif [[ "$kernelver" =~ $regex9 ]] ; then
	upgradebuildrpm 9   
elif [[ "$kernelver" =~ $regex10 ]] ; then
	upgradebuildrpm 10
elif [[ "$kernelver" =~ $regex11 ]] ; then
        upgradebuildrpm 11 
elif [ "$kernelver" == "3.10.0-693.el7.x86_64" ] ;then
	checkrpms
	upgradebuildrpm   
else
        echo "Kernel version not supported, Exiting."
        exit 1
fi
