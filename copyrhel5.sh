#!/bin/bash

#source the ips.sh

. ./ips.sh
#copying file from RHEL5.0
echo "copying rhel52/"
scp -r root@${centos52x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL52/lis-52/x86_64/
scp -r root@${centos52x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL52/
scp -r root@${centos52x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL52/lis-52/x86/

echo "copying scp -r root@${centos53x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL53/"
#copying file from RHEL5.3
scp -r root@${centos53x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL53/lis-53/x86_64/
scp -r root@${centos53x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL53/
scp -r root@${centos53x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL53/lis-53/x86/

echo "copying scp -r root@${centos54x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL54/"
#copying file from RHEL5.4
scp -r root@${centos54x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL54/lis-54/x86_64/
scp -r root@${centos54x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL54/
scp -r root@${centos54x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL54/lis-54/x86/

echo "copying scp -r root@${centos55x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL55/"
#copying file from RHEL5.5
scp -r root@${centos55x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL55/lis-55/x86_64/
scp -r root@${centos55x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL55/
scp -r root@${centos55x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL55/lis-55/x86/

echo "copying scp -r root@${centos56x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL56/"
#copying file from RHEL5.6
scp -r root@${centos56x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL56/lis-56/x86_64/
scp -r root@${centos56x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL56/
scp -r root@${centos56x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL56/lis-56/x86/

echo "copying scp -r root@${centos57x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL57/"
#copying file from RHEL5.7
scp -r root@${centos57x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL57/lis-57/x86_64/
scp -r root@${centos57x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL57/
scp -r root@${centos57x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL57/lis-57/x86/


echo "copying scp -r root@${centos58x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL58/"
#copying file from RHEL5.8
scp -r root@${centos58x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL58/lis-58/x86_64/
scp -r root@${centos58x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL58/
scp -r root@${centos58x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL58/lis-58/x86/


echo "copying scp -r root@${centos59x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL59/"
#copying file from RHEL5.9
scp -r root@${centos59x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL59/lis-59/x86_64/
scp -r root@${centos59x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL59/
scp -r root@${centos59x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL59/lis-59/x86/


echo "copying scp -r root@${centos510x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL510/"
#copying file from RHEL5.10
scp -r root@${centos510x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL510/lis-510/x86_64/
scp -r root@${centos510x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL510/
scp -r root@${centos510x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL510/lis-510/x86/

echo "copying scp -r root@${centos511x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL511/"
#copying file from RHEL5.11
scp -r root@${centos511x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL511/lis-511/x86_64/
scp -r root@${centos511x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL511/
scp -r root@${centos511x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL511/lis-511/x86/

echo "copying scp -r root@${centos511x64_update}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL511_update/"
#copying file from RHEL5.11_update
scp -r root@${centos511x64_update}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL511_UPDATE/lis-511/x86_64/
scp -r root@${centos511x64_update}:/root/rpmbuild/SRPMS/* LISISO/RHEL511_UPDATE/
scp -r root@${centos511x32_update}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL511_UPDATE/lis-511/x86/


















