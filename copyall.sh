#!/bin/bash

#source the ips.sh
. ./ips.sh

ips_contents=$(cat ./ips.sh)
for line in $ips_contents; do
    vm_name="$(cut -d'=' -f1 <<<$line)"
    version="$(cut -d'_' -f4 <<<$vm_name)"
    hardware="$(cut -d'_' -f5 <<<$vm_name)"
    update_number="$(cut -d'_' -f6 <<<$vm_name)"

    echo "$vm_name : $version : $hardware: $update_number"

    #Define the source directory
    if [[ "$hardware" == "x64" ]]; then
        arch_source_dir="x86_64"
        arch_destination_dir=$arch_source_dir
    else
        arch_source_dir="i686"
        arch_destination_dir="x86"
    fi

    lis_rpm_build_source="/root/rpmbuild/RPMS/$arch_source_dir"
    lis_srpm_source="/root/rpmbuild/SRPMS"

    echo "lis_rpm_build_source: $lis_rpm_build_source"
    echo "lis_srpm_source: $lis_srpm_source"

    #Define the destination directory
    lis_srpm_build_destination="LISISO/RPMS${version}"
    lis_rpm_build_destination="LISISO/RPMS${version}"

    if [[ "$version" =~ ^5.* ]]; then
        if [[ "$update_number" =~ "update" ]]; then
            lis_rpm_build_destination="${lis_rpm_build_destination}_UPDATE"
        fi
        lis_srpm_build_destination="${lis_rpm_build_destination}/lis-$version/"
        lis_rpm_build_destination="${lis_rpm_build_destination}/lis-$version/${arch_destination_dir}"
    elif [[ "$version" =~ ^6.* ]]; then
        if [[ "$update_number" =~ "update" ]]; then
            lis_rpm_build_destination="$lis_rpm_build_destination/$update_number"
        fi
    elif [[ "$version" =~ ^7.* ]]; then
        if [[ "$update_number" =~ "update" ]]; then
            lis_rpm_build_destination="$lis_rpm_build_destination/$update_number"
        fi
    else
        echo "EXCEPTION: Incorrect Version : $version - $vm_name - $line "
        exit 1
    fi

    ip=$(eval echo \$$vm_name)
    echo "${ip}:${lis_rpm_build_source} -> $lis_rpm_build_destination"

    # In case of new update, update folder will not be present.
    # Create a new update<number> folder.
    [ ! -d $lis_rpm_build_destination ] && mkdir -p $lis_rpm_build_destination

    #Copy the new generated RPMs
    scp -r root@${ip}:${lis_rpm_build_source}/* $lis_rpm_build_destination

    #Generate the errata kernel list which will used for installation.
    if [[ "$update_number" =~ "update" ]]; then
	lis_rpm_install_destination="LISISO/RPMS${version}"
	kernel=$(ssh root@$ip "uname -r" 2> /dev/null)
	echo "errata_kerver_$update_number=$kernel" >> "$lis_rpm_install_destination/errata_kernel_list"

	#Source rpms need not to be copied for the update folder.
	lis_srpm_build_destination=""
    fi

    #Copy the SRPMs
    if [[ x"$lis_srpm_build_destination" != x ]];then
        #Copy only one source rpm for 64 bit and 32 bit rpms.
        if [ $arch_source_dir != "i686" ];then
	    scp -r root@${ip}:${lis_srpm_source}/* $lis_srpm_build_destination
        fi
    fi
done