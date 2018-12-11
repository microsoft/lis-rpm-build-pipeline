################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################
source ../commonfunctions.sh

upgradeKernel '3.10.0-693.2.2' '1'
upgradeKernel '3.10.0-693.5.2' '2'
upgradeKernel '3.10.0-693.11.1' '3'
upgradeKernel '3.10.0-693.11.6' '4'
upgradeKernel '3.10.0-693.17.1' '5'
upgradeKernel '3.10.0-693.21.1' '6'
upgradeKernel '3.10.0-693.25.2' '7'
upgradeKernel '3.10.0-693.25.4' '8'
upgradeKernel '3.10.0-693.25.7' '9'
upgradeKernel '3.10.0-693.43.1' '10'

echo "Kernel version not supported, Exiting."
exit 1

