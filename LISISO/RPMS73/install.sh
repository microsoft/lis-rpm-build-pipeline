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
	installbuildrpm 1   
elif [[ "$kernelver" =~ $regex1 ]] ; then 
	installbuildrpm 2
elif [[ "$kernelver" =~ $regex2 ]] ; then
	installbuildrpm 3
elif [[ "$kernelver" =~ $regex3 ]] || [[ "$kernelver" =~ $regex4 ]]   ; then
	installbuildrpm 4
elif [[ "$kernelver" =~ $regex5 ]] ; then
	installbuildrpm 5
elif [[ "$kernelver" =~ $regex6 ]] ; then
	installbuildrpm 6
elif [[ "$kernelver" =~ $regex7 ]] ; then
	installbuildrpm 7
elif [[ "$kernelver" =~ $regex8 ]] ; then
	installbuildrpm 8
elif [[ "$kernelver" =~ $regex9 ]] ; then
	installbuildrpm 9
elif [[ "$kernelver" =~ $regex10 ]] ; then
	installbuildrpm 10
elif [[ "$kernelver" =~ $regex11 ]] ; then
	installbuildrpm 11
elif [[ "$kernelver" =~ $regex12 ]] ; then
	installbuildrpm 12
elif [[ "$kernelver" =~ $regex13 ]] ; then
	installbuildrpm 13
elif [[ "$kernelver" =~ $regex14 ]] ; then
	installbuildrpm 14
elif [[ "$kernelver" =~ $regex15 ]] ; then
	installbuildrpm 15
elif [[ "$kernelver" =~ $regex16 ]] ; then
	installbuildrpm 16
elif [[ "$kernelver" =~ $regex17 ]] ; then
	installbuildrpm 17
elif [[ "$kernelver" =~ $regex18 ]] ; then
        installbuildrpm 18
elif [ "$kernelver" == "3.10.0-514.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.2.2.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.6.1.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.6.2.el7.x86_64" ] ;then
	checkrpms
	installbuildrpm 
else
	echo "Kernel version not supported, Exiting."
	exit 1
fi

