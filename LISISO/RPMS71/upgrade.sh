################################################################################
#
# This script is to automate installation of Linux Integration Services for
# Microsoft Hyper-V
#
################################################################################

update=0
source ${LIS_INSTALL_BASE_DIR}/commonfunctions.sh

GetUpdateNumber
update=$?

upgradebuildrpm $update
