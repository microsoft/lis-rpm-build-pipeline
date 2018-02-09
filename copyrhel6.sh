#!/bin/bash

#source the ips.sh

. ./ips.sh
#copying file from RHEL6.0
echo "copying root@${centos60x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL60/"
scp -r root@${centos60x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL60/
scp -r root@${centos60x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL60/
scp -r root@${centos60x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL60/
scp -r root@${centos60x32}:/root/rpmbuild/SRPMS/* LISISO/RHEL60/

echo "copying scp -r root@${centos61x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL61/"
#copying file from RHEL6.1
scp -r root@${centos61x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL61/
scp -r root@${centos61x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL61/
scp -r root@${centos61x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL61/
scp -r root@${centos61x32}:/root/rpmbuild/SRPMS/* LISISO/RHEL61/


echo "copying scp -r root@${centos62x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL62/"
#copying file from RHEL6.2
scp -r root@${centos62x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL62/
scp -r root@${centos62x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL62/
scp -r root@${centos62x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL62/
scp -r root@${centos62x32}:/root/rpmbuild/SRPMS/* LISISO/RHEL62/


echo "copying root@${centos63x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL63/"
#copying file from RHEL6.3
scp -r root@${centos63x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL63/
scp -r root@${centos63x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL63/
scp -r root@${centos63x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL63/
scp -r root@${centos63x32}:/root/rpmbuild/SRPMS/* LISISO/RHEL63/

echo "copying root@${centos64x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL64/"
#copying file from RHEL6.4
scp -r root@${centos64x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL64/
scp -r root@${centos64x64updte}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL64/update/
scp -r root@${centos64x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL64/
scp -r root@${centos64x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL64/
scp -r root@${centos64x32}:/root/rpmbuild/SRPMS/* LISISO/RHEL64/

echo "copying root@${centos65x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL65/"
#copying file from RHEL6.5
scp -r root@${centos65x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL65/
scp -r root@${centos65x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL65/
scp -r root@${centos65x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL65/
scp -r root@${centos65x32}:/root/rpmbuild/SRPMS/* LISISO/RHEL65/

echo "copying root@${centos66x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL66/"
#copying file from RHEL6.6
scp -r root@${centos66x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL66/
scp -r root@${centos66x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL66/
scp -r root@${centos66x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL66/
scp -r root@${centos66x32}:/root/rpmbuild/SRPMS/* LISISO/RHEL66/

echo "copying root@${centos67x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL67/"
#copying file from RHEL6.7
scp -r root@${centos67x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL67/
scp -r root@${centos67x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL67/
scp -r root@${centos67x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL67/
scp -r root@${centos67x32}:/root/rpmbuild/SRPMS/* LISISO/RHEL67/

echo "copying root@${centos68x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL68/"
#copying file from RHEL6.8
scp -r root@${centos68x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL68/
scp -r root@${centos68x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL68/
scp -r root@${centos68x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL68/
scp -r root@${centos68x32}:/root/rpmbuild/SRPMS/* LISISO/RHEL68/

echo "copying root@${centos69x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL69/"
#copying file from RHEL6.9
scp -r root@${centos69x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL69/
scp -r root@${centos69x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL69/
scp -r root@${centos69x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL69/
scp -r root@${centos69x32}:/root/rpmbuild/SRPMS/* LISISO/RHEL69/


