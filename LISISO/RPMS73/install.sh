################################################################################
#
# This script is to automate installation of Linux Integration Services for
# Microsoft Hyper-V
#
################################################################################

update_number=0
source ${LIS_INSTALL_BASE_DIR}/commonfunctions.sh

#List of errata kernel that needs special handling due to KABI changes
file_errata_kernel_list="errata_kernel_list"
[ -f $file_errata_kernel_list ] && ekernel_list=$(cat $file_errata_kernel_list | cut -d"=" -f2)

for ekernel in $ekernel_list;do
	if ! IsInstalledKernelOlderThanErrataKernel $ekernel;then
		break
	fi
	update_number=$(expr $update_number + 1)
done

installbuildrpm $update_number
