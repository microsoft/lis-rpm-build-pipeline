#!/bin/bash

#source the ips.sh

. ./ips.sh

NA="NotApplicable"

cat ./new_ips.sh | while read line

do
   # do something with $line here
    vm_name="$(cut -d'=' -f1 <<<$line)"
    version="$(cut -d'_' -f4 <<<$vm_name)"
    hardware="$(cut -d'_' -f5 <<<$vm_name)"
    update_number="$(cut -d'_' -f6 <<<$vm_name)"
	echo "$vm_name : $version : $hardware: $update_number"
    #Define the source directory 
    if [[ "$hardware" == "x64" ]]; then
        arch_source_dir="x86_64"
        arch_destination_dir=$arch_source_dir
        lis_srpm_source="/root/rpmbuild/SRPMS/*"
    else
        arch_source_dir="i686"
        arch_destination_dir="x86"
        lis_srpm_source="$NA"
        
    fi
    lis_rpm_build_source="/root/rpmbuild/RPMS/$arch_source_dir"
	echo "lis_rpm_build_source: $lis_rpm_build_source"
	echo "lis_srpm_source: $lis_srpm_source"
    

    #Define the destination directory

    lis_rpm_build_destination="LISISO/RPMS${version}"
    if [[ "$version" =~ ^5.* ]]; then
        if [[ "$update_number" =~ "update" ]]; then
            lis_rpm_build_destination="${lis_rpm_build_destination}_UPDATE"
        fi
        lis_rpm_build_destination="${lis_rpm_build_destination}/lis-$version"
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
    fi
	ip=$(eval echo \$$vm_name)
        echo "${ip}:${lis_rpm_build_source} -> $lis_rpm_build_destination"
        scp -r root@${ip}:${lis_rpm_build_source}/* $lis_rpm_build_destination
	echo ..............................
done

#copying file from RPMS5.0
#echo "Copying scp -r root@${centos52x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS52/lis-52/x86_64/"
#scp -r root@${centos52x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS52/lis-52/x86_64/
#echo "Copying scp -r root@${centos52x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS52/"
#scp -r root@${centos52x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS52/
#echo "Copying scp -r root@${centos52x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS52/lis-52/x86/"
#scp -r root@${centos52x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS52/lis-52/x86/

