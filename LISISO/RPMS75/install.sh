################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################
kernelver=`uname -r`
regex1='3.10.0-862.2.3'
regex2='3.10.0-862.3.2'
regex3='3.10.0-862.3.3'
regex4='3.10.0-862.6.3'
regex5='3.10.0-862.9.1'
regex6='3.10.0-862.11.6'
regex7='3.10.0-862.14.4'
regex8='3.10.0-862.25.3'
regex9='3.10.0-862.27.1'
regex10='3.10.0-862.20.2'

source ../commonfunctions.sh

if [[ "$kernelver" =~ $regex1 ]]; then	        
	installbuildrpm 1   
elif [[ "$kernelver" =~ $regex2 ]]; then
	installbuildrpm 2   
elif [[ "$kernelver" =~ $regex3 ]]; then
	installbuildrpm 3   
elif [[ "$kernelver" =~ $regex4 ]]; then
	installbuildrpm 4   
elif [[ "$kernelver" =~ $regex5 ]]; then
	installbuildrpm 5   
elif [[ "$kernelver" =~ $regex6 ]]; then
	installbuildrpm 6   
elif [[ "$kernelver" =~ $regex7 ]]; then
	installbuildrpm 7   
elif [[ "$kernelver" =~ $regex8 ]]; then
	installbuildrpm 8
elif [[ "$kernelver" =~ $regex9 ]]; then
        installbuildrpm 9
elif [[ "$kernelver" =~ $regex10 ]]; then
        installbuildrpm 10
elif [ "$kernelver" == "3.10.0-862.el7.x86_64" ] ;then
	checkrpms
	installbuildrpm   
else
        echo "Kernel version not supported, Exiting."
        exit 1
fi
