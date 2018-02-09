#!/bin/bash

#source the ips.sh

. ./ips.sh
#copying file from Oracle6.4
scp -r root@${centos64x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle64/
scp -r root@${centos64x64updte}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle64/update/
scp -r root@${centos64x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle64/
scp -r root@${centos64x32}:/root/rpmbuild/RPMS/i686/* LISISO/Oracle64/
scp -r root@${centos64x32}:/root/rpmbuild/SRPMS/* LISISO/Oracle64/

echo "copying root@${centos65x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle65/"
#copying file from Oracle6.5
scp -r root@${centos65x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle65/
scp -r root@${centos65x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle65/
scp -r root@${centos65x32}:/root/rpmbuild/RPMS/i686/* LISISO/Oracle65/
scp -r root@${centos65x32}:/root/rpmbuild/SRPMS/* LISISO/Oracle65/

echo "copying root@${centos66x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle66/"
#copying file from Oracle6.6
scp -r root@${centos66x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle66/
scp -r root@${centos66x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle66/
scp -r root@${centos66x32}:/root/rpmbuild/RPMS/i686/* LISISO/Oracle66/
scp -r root@${centos66x32}:/root/rpmbuild/SRPMS/* LISISO/Oracle66/

echo "copying root@${centos67x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle67/"
#copying file from Oracle6.7
scp -r root@${centos67x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle67/
scp -r root@${centos67x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle67/
scp -r root@${centos67x32}:/root/rpmbuild/RPMS/i686/* LISISO/Oracle67/
scp -r root@${centos67x32}:/root/rpmbuild/SRPMS/* LISISO/Oracle67/

echo "copying root@${centos68x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle68/"
#copying file from Oracle6.8
scp -r root@${centos68x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle68/
scp -r root@${centos68x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle68/
scp -r root@${centos68x32}:/root/rpmbuild/RPMS/i686/* LISISO/Oracle68/
scp -r root@${centos68x32}:/root/rpmbuild/SRPMS/* LISISO/Oracle68/

echo "copying root@${centos69x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle69/"
#copying file from Oracle6.9
scp -r root@${centos69x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle69/
scp -r root@${centos69x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle69/
scp -r root@${centos69x32}:/root/rpmbuild/RPMS/i686/* LISISO/Oracle69/
scp -r root@${centos69x32}:/root/rpmbuild/SRPMS/* LISISO/Oracle69/


