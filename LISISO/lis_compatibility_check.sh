#!/bin/bash

# Script to detect the lis compatibility with running kernel.
# Script returns the following status
#  	0 : Not compatible
#  	1 : Compatible
#  	2 : Cannot perform compatibility check

depmod_conf="/etc/depmod.d/dist.conf"
kernelver=$(uname -r)
verbose=1

tmp_dir=$(mktemp -td .lis_compat_chk.XXXXXX)
trap "rm -rf $tmp_dir" EXIT

function PrepareSandboxForCompatCheck()
{
	[[ ! -d $tmp_dir ]] &&
		echo "Failed to create tmp dir. Skipping compatibility check." && exit 2

	[[ ! -f "/boot/symvers-${kernelver}.gz" ]] &&
		echo "symvers-${kernelver} not found" && return 2

	zcat /boot/symvers-${kernelver}.gz > $tmp_dir/symvers

	mkdir -p $tmp_dir/etc/depmod.d/
	[[ -f $depmod_conf ]] && cp $depmod_conf $tmp_dir/etc/depmod.d/ ||
		echo "search updates extra built-in weak-updates" > $tmp_dir$depmod_conf
}

function ConfigureModulesForCompatCheck()
{
	working_dir=$(pwd)
	lis_kmod_rpm=$(ls kmod-microsoft-hyper-v-*.x86_64.rpm 2> /dev/null)

	# Install lis rpm into a folder for dependency check
	rpm -i --root $tmp_dir --nodeps --notriggers --noscripts $lis_kmod_rpm
	[ $? -ne 0 ] && echo "Failed to install $lis_kmod_rpm" && return 2

	# Create a copy of lib module folder for installed kernel.
	kmod_kernel_ver=$(ls $tmp_dir/lib/modules/ 2> /dev/null)
	cd $tmp_dir/lib/modules
	ln -s $kmod_kernel_ver $kernelver

	# Create a symbolic link to drivers of installed kernel.
	cd $kernelver
	ln -sf /lib/modules/$kernelver/kernel kernel

	cd $working_dir
}

function RunLISCompatibilityCheck()
{
	PrepareSandboxForCompatCheck
	ret=$?
	[ $ret -ne 0 ] && return $ret

	ConfigureModulesForCompatCheck
	ret=$?
	[ $ret -ne 0 ] && return $ret

	depmod_output_log=$(mktemp -p $tmp_dir)
	depmod -b $tmp_dir -ae -E $tmp_dir/symvers -C $tmp_dir/etc/depmod.d/ $kernelver 1> $depmod_output_log 2>&1

	# Check for the warning reported by the microsoft-hyper-v drivers
	if [ $verbose -eq 1 ];then
		cat $depmod_output_log | grep "microsoft-hyper-v" |
			 grep "disagrees about version of symbol" 2>&1
	else
		cat $depmod_output_log | grep "microsoft-hyper-v" |
			 grep "disagrees about version of symbol" 1> /dev/null 2>&1
	fi
	ret=$?

	return $ret
}
