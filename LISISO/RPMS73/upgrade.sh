################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################

# Determine kernel architecture version 
osbit=`uname -m`
kernelver=`uname -r`

regex='3.10.0-514.10+\.[0-9]+'
regex1='3.10.0-514.16.1'
regex2='3.10.0-514.21.1'
regex3='3.10.0-514.21.2'
regex4='3.10.0-514.26.1'
regex5='3.10.0-514.26.2'
regex6='3.10.0-514.28.1'
regex7='3.10.0-514.35.1'
regex8='3.10.0-514.36.5'
regex9='3.10.0-514.41.1'
regex10='3.10.0-514.44.1'
regex11='3.10.0-514.48.1'
regex12='3.10.0-514.48.3'
regex13='3.10.0-514.48.5'
regex14='3.10.0-514.53.1'
regex15='3.10.0-514.55.4'
regex16='3.10.0-514.58.1'
regex17='3.10.0-514.61.1'
regex18='3.10.0-514.62.1'

source ../commonfunctions.sh

if [[ "$kernelver" =~ $regex ]]; then
	upgradebuildrpm 1   
elif [[ "$kernelver" =~ $regex1 ]] ; then 
	upgradebuildrpm 2
elif [[ "$kernelver" =~ $regex2 ]] ; then
	upgradebuildrpm 3
elif [[ "$kernelver" =~ $regex3 ]] || [[ "$kernelver" =~ $regex4 ]]   ; then
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
elif [[ "$kernelver" =~ $regex12 ]] ; then
	upgradebuildrpm 12
elif [[ "$kernelver" =~ $regex13 ]] ; then
	upgradebuildrpm 13
elif [[ "$kernelver" =~ $regex14 ]] ; then
	upgradebuildrpm 14
elif [[ "$kernelver" =~ $regex15 ]] ; then
	upgradebuildrpm 15
elif [[ "$kernelver" =~ $regex16 ]] ; then
	upgradebuildrpm 16
elif [[ "$kernelver" =~ $regex17 ]] ; then
	upgradebuildrpm 17
elif [[ "$kernelver" =~ $regex18 ]] ; then
        upgradebuildrpm 18
elif [ "$kernelver" == "3.10.0-514.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.2.2.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.6.1.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.6.2.el7.x86_64" ] ;then
	checkrpms
	upgradebuildrpm 
else
	echo "Kernel version not supported, Exiting."
	exit 1
fi
