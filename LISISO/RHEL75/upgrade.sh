#################################################################
# This script is to automate Upgradation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################
source ../commonfunctions.sh

upgradeKernel '3.10.0-862.2.3' '1'
upgradeKernel '3.10.0-862.3.2' '2'
upgradeKernel '3.10.0-862.3.3' '3'
upgradeKernel '3.10.0-862.6.3' '4'
upgradeKernel '3.10.0-862.9.1' '5'
upgradeKernel '3.10.0-862.11.6' '6'
upgradeKernel '3.10.0-862.14.4' '7'
upgradeKernel '3.10.0-862.25.3' '8'

echo "Kernel version not supported, Exiting."
exit 1

