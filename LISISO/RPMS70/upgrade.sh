################################################################################
#
# This script is to automate upgradation of Linux Integration Services for
# Microsoft Hyper-V
#
################################################################################

#List of errata kernel for RH7.0 distro needs special handling due to KABI changes
errata_kerver_1='3.10.0-123.8.1'

source ${LIS_INSTALL_BASE_DIR}/commonfunctions.sh

if ! IsInstalledKernelOlderThanErrataKernel $errata_kerver_1; then
	checkrpms
	upgradebuildrpm
else
        upgradebuildrpm 1
fi
