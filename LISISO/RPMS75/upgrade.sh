################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################

#List of errata kernel for RH7.5 distro needs special handling due to KABI changes
errata_kerver_1='3.10.0-862.14.4.el7.x86_64'

source ../commonfunctions.sh

if ! IsInstalledKernelOlderThanErrataKernel $errata_kerver_1; then
	checkrpms
	upgradebuildrpm
else
        upgradebuildrpm 1
fi
