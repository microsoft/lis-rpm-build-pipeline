################################################################################
#
# This script is to automate upgrdation of Linux Integration Services for
# Microsoft Hyper-V
#
################################################################################

source ${LIS_INSTALL_BASE_DIR}/commonfunctions.sh

checkrpms
upgradebuildrpm
