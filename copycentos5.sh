#!/bin/bash

#source the ips.sh

. ./ips.sh
#copying file from CentOS6.0
echo "copying rhel52/"
scp -r root@${centos52x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS52/lis-52/x86_64/
scp -r root@${centos52x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS52/
scp -r root@${centos52x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS52/lis-52/x86/

echo "copying scp -r root@${centos53x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS53/"
#copying file from CentOS5.3
scp -r root@${centos53x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS53/lis-53/x86_64/
scp -r root@${centos53x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS53/
scp -r root@${centos53x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS53/lis-53/x86/

echo "copying scp -r root@${centos54x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS54/"
#copying file from CentOS5.4
scp -r root@${centos54x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS54/lis-54/x86_64/
scp -r root@${centos54x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS54/
scp -r root@${centos54x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS54/lis-54/x86/

echo "copying scp -r root@${centos55x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS55/"
#copying file from CentOS5.5
scp -r root@${centos55x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS55/lis-55/x86_64/
scp -r root@${centos55x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS55/
scp -r root@${centos55x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS55/lis-55/x86/

echo "copying scp -r root@${centos56x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS56/"
#copying file from CentOS5.6
scp -r root@${centos56x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS56/lis-56/x86_64/
scp -r root@${centos56x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS56/
scp -r root@${centos56x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS56/lis-56/x86/

echo "copying scp -r root@${centos57x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS57/"
#copying file from CentOS5.7
scp -r root@${centos57x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS57/lis-57/x86_64/
scp -r root@${centos57x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS57/
scp -r root@${centos57x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS57/lis-57/x86/


echo "copying scp -r root@${centos58x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS58/"
#copying file from CentOS5.8
scp -r root@${centos58x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS58/lis-58/x86_64/
scp -r root@${centos58x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS58/
scp -r root@${centos58x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS58/lis-58/x86/


echo "copying scp -r root@${centos59x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS59/"
#copying file from CentOS5.9
scp -r root@${centos59x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS59/lis-59/x86_64/
scp -r root@${centos59x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS59/
scp -r root@${centos59x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS59/lis-59/x86/


echo "copying scp -r root@${centos510x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS510/"
#copying file from CentOS5.10
scp -r root@${centos510x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS510/lis-510/x86_64/
scp -r root@${centos510x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS510/
scp -r root@${centos510x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS510/lis-510/x86/

echo "copying scp -r root@${centos511x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS511/"
#copying file from CentOS5.11
scp -r root@${centos511x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS511/lis-511/x86_64/
scp -r root@${centos511x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS511/
scp -r root@${centos511x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS511/lis-511/x86/

echo "copying scp -r root@${centos511x64_update}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS511_UPDATE/"
#copying file from CentOS5.11_update
scp -r root@${centos511x64_update}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS511_UPDATE/lis-511/x86_64/
scp -r root@${centos511x64_update}:/root/rpmbuild/SRPMS/* LISISO/CentOS511_UPDATE/
scp -r root@${centos511x32_update}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS511_UPDATE/lis-511/x86/


















