#!/bin/bash

#source the ips.sh

. ./ips.sh
#copying file from RHEL7.0
echo "copying root@${centos70x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL70/"
scp -r root@${centos70x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL70/
scp -r root@${centos70x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL70/

echo "copying scp -r root@${centos71x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL71/"
#copying file from RHEL7.1
scp -r root@${centos71x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL71/
scp -r root@${centos71x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL71/

echo "copying scp -r root@${centos72x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL72/"
#copying file from RHEL7.2
scp -r root@${centos72x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL72/
scp -r root@${centos72x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL72/

echo "copying root@${centos73x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/"
#copying file from RHEL7.3
scp -r root@${centos73x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/
scp -r root@${centos73x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/

echo "copying root@${centos73x64update}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update/"
#copying file from RHEL7.3_update
scp -r root@${centos73x64update}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update/
scp -r root@${centos73x64update}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update/

echo "copying root@${centos73x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update1/"
#copying file from RHEL7.3_update1
scp -r root@${centos73x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update1/
scp -r root@${centos73x64update1}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update1/

echo "copying root@${centos73x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update2/"
#copying file from RHEL7.3_update2
scp -r root@${centos73x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update2/
scp -r root@${centos73x64update2}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update2/

echo "copying root@${centos73x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update3/"
#copying file from RHEL7.3_update3
scp -r root@${centos73x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update3/
scp -r root@${centos73x64update3}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update3/

echo "copying root@${centos73x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update4/"
#copying file from RHEL7.3_update4
scp -r root@${centos73x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update4/
scp -r root@${centos73x64update4}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update4/

echo "copying root@${centos73x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update5/"
#copying file from RHEL7.3_update5
scp -r root@${centos73x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update5/
scp -r root@${centos73x64update5}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update5/

echo "copying root@${centos73x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update6/"
#copying file from RHEL7.3_update6
scp -r root@${centos73x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update6/
scp -r root@${centos73x64update6}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update6/

echo "copying root@${centos73x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update7/"
#copying file from RHEL7.3_update7
scp -r root@${centos73x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update7/
scp -r root@${centos73x64update7}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update7/

echo "copying root@${centos73x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update8/"
#copying file from RHEL7.3_update8
scp -r root@${centos73x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update8/
scp -r root@${centos73x64update8}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update8/

echo "copying root@${centos74x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/"
#copying file from RHEL7.4
scp -r root@${centos74x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/
scp -r root@${centos74x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL74/

echo "copying root@${centos74x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update1/"
#copying file from RHEL7.4_update1
scp -r root@${centos74x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update1/
scp -r root@${centos74x64update1}:/root/rpmbuild/SRPMS/* LISISO/RHEL74/update1/

echo "copying root@${centos74x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update2/"
#copying file from RHEL7.4_update2
scp -r root@${centos74x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update2/
scp -r root@${centos74x64update2}:/root/rpmbuild/SRPMS/* LISISO/RHEL74/update2/

echo "copying root@${centos74x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update3/"
#copying file from RHEL7.4_update3
scp -r root@${centos74x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update3/
scp -r root@${centos74x64update3}:/root/rpmbuild/SRPMS/* LISISO/RHEL74/update3/

echo "copying root@${centos74x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update4/"
#copying file from RHEL7.4_update4
scp -r root@${centos74x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update4/
scp -r root@${centos74x64update4}:/root/rpmbuild/SRPMS/* LISISO/RHEL74/update4/

echo "copying root@${centos74x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update5/"
#copying file from RHEL7.4_update5
scp -r root@${centos74x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update5/
scp -r root@${centos74x64update5}:/root/rpmbuild/SRPMS/* LISISO/RHEL74/update5/

