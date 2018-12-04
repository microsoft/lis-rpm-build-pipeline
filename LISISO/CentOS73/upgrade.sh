################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################

# Determine kernel architecture version 
source ../commonfunctions.sh

upgradeKernel '3.10.0-514.10+\.[0-9]+' '1'
upgradeKernel '3.10.0-514.16.1' '2'
upgradeKernel '3.10.0-514.21.1' '3'
upgradeKernel '3.10.0-514.21.2' '4'
upgradeKernel '3.10.0-514.26.1' '5'
upgradeKernel '3.10.0-514.26.2' '6'
upgradeKernel '3.10.0-514.28.1' '7'
upgradeKernel '3.10.0-514.35.1' '8'
upgradeKernel '3.10.0-514.36.5' '9'
upgradeKernel '3.10.0-514.41.1' '10'
upgradeKernel '3.10.0-514.44.1' '11'
upgradeKernel '3.10.0-514.48.1' '12'
upgradeKernel '3.10.0-514.48.3' '13'
upgradeKernel '3.10.0-514.48.5' '14'
upgradeKernel '3.10.0-514.53.1' '15'
upgradeKernel '3.10.0-514.55.4' '16'
upgradeKernel '3.10.0-514.58.1' '17'
upgradeKernel '3.10.0-514.61.1' '18'

echo "Kernel version not supported, Exiting."
exit 1

