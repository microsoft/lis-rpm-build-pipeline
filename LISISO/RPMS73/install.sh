################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################

#List of errata kernel for RH7.3 distro needs special handling due to KABI changes
errata_kerver_1='3.10.0-514.10.2.el7.x86_64'
errata_kerver_2='3.10.0-514.16.1.el7.x86_64'

source ../commonfunctions.sh

if ! IsInstalledKernelOlderThanErrataKernel $errata_kerver_1; then
	checkrpms
	installbuildrpm
elif ! IsInstalledKernelOlderThanErrataKernel $errata_kerver_2; then
	installbuildrpm 1
else
	installbuildrpm 2
fi
