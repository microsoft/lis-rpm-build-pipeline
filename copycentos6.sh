#!/bin/bash

#source the ips.sh

. ./ips.sh
#copying file from CentOS6.0
echo "copying root@${centos60x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS60/"
scp -r root@${centos60x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS60/
scp -r root@${centos60x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS60/
scp -r root@${centos60x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS60/
scp -r root@${centos60x32}:/root/rpmbuild/SRPMS/* LISISO/CentOS60/

echo "copying scp -r root@${centos61x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS61/"
#copying file from CentOS6.1
scp -r root@${centos61x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS61/
scp -r root@${centos61x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS61/
scp -r root@${centos61x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS61/
scp -r root@${centos61x32}:/root/rpmbuild/SRPMS/* LISISO/CentOS61/


echo "copying scp -r root@${centos62x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS62/"
#copying file from CentOS6.2
scp -r root@${centos62x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS62/
scp -r root@${centos62x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS62/
scp -r root@${centos62x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS62/
scp -r root@${centos62x32}:/root/rpmbuild/SRPMS/* LISISO/CentOS62/


echo "copying root@${centos63x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS63/"
#copying file from CentOS6.3
scp -r root@${centos63x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS63/
scp -r root@${centos63x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS63/
scp -r root@${centos63x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS63/
scp -r root@${centos63x32}:/root/rpmbuild/SRPMS/* LISISO/CentOS63/

echo "copying root@${centos64x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS64/"
#copying file from CentOS6.4
scp -r root@${centos64x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS64/
scp -r root@${centos64x64updte}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS64/update/
scp -r root@${centos64x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS64/
scp -r root@${centos64x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS64/
scp -r root@${centos64x32}:/root/rpmbuild/SRPMS/* LISISO/CentOS64/

echo "copying root@${centos65x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS65/"
#copying file from CentOS6.5
scp -r root@${centos65x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS65/
scp -r root@${centos65x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS65/
scp -r root@${centos65x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS65/
scp -r root@${centos65x32}:/root/rpmbuild/SRPMS/* LISISO/CentOS65/

echo "copying root@${centos66x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS66/"
#copying file from CentOS6.6
scp -r root@${centos66x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS66/
scp -r root@${centos66x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS66/
scp -r root@${centos66x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS66/
scp -r root@${centos66x32}:/root/rpmbuild/SRPMS/* LISISO/CentOS66/

echo "copying root@${centos67x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS67/"
#copying file from CentOS6.7
scp -r root@${centos67x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS67/
scp -r root@${centos67x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS67/
scp -r root@${centos67x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS67/
scp -r root@${centos67x32}:/root/rpmbuild/SRPMS/* LISISO/CentOS67/

echo "copying root@${centos68x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS68/"
#copying file from CentOS6.8
scp -r root@${centos68x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS68/
scp -r root@${centos68x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS68/
scp -r root@${centos68x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS68/
scp -r root@${centos68x32}:/root/rpmbuild/SRPMS/* LISISO/CentOS68/

echo "copying root@${centos69x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS69/"
#copying file from CentOS6.9
scp -r root@${centos69x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS69/
scp -r root@${centos69x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS69/
scp -r root@${centos69x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS69/
scp -r root@${centos69x32}:/root/rpmbuild/SRPMS/* LISISO/CentOS69/


