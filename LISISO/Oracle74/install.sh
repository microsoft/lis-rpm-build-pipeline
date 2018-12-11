################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################

# Determine kernel architecture version 

source ../commonfunctions.sh

installKernel '3.10.0-693.2.2' '1'
installKernel '3.10.0-693.5.2' '2'
installKernel '3.10.0-693.11.1' '3'
installKernel '3.10.0-693.11.6' '4'
installKernel '3.10.0-693.17.1' '5'
installKernel '3.10.0-693.21.1' '6'
installKernel '3.10.0-693.25.2' '7'
installKernel '3.10.0-693.25.4' '8'
installKernel '3.10.0-693.25.7' '9'
installKernel '3.10.0-693.43.1' '10'

echo "Kernel version not supported, Exiting."
exit 1
