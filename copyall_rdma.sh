#!/bin/bash
set -e

[[ -z $1 ]] && {
    echo "version missing..."
    exit 1
}

#source the ips.sh
. ./ips.sh

RPMBASEDIR="msft-rdma-drivers-${1}"
[[ ! -d ${RPMBASEDIR} ]] && mkdir ${RPMBASEDIR}

#copying file from RHEL6.5
RPMDIR="${RPMBASEDIR}/rhel65"
mkdir -p ${RPMDIR}
echo "copying root@${centos65x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}"
scp -r root@${centos65x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}/
scp -r root@${centos65x64}:/root/rpmbuild/SRPMS/* ${RPMDIR}/

#copying file from RHEL6.8
RPMDIR="${RPMBASEDIR}/rhel68"
mkdir -p ${RPMDIR}
echo "copying root@${centos68x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}"
scp -r root@${centos68x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}/
scp -r root@${centos68x64}:/root/rpmbuild/SRPMS/* ${RPMDIR}/

#copying file from RHEL6.9
RPMDIR="${RPMBASEDIR}/rhel69"
mkdir -p ${RPMDIR}
echo "copying root@${centos69x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}"
scp -r root@${centos69x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}/
scp -r root@${centos69x64}:/root/rpmbuild/SRPMS/* ${RPMDIR}/

#copying file from RHEL6.10
RPMDIR="${RPMBASEDIR}/rhel610"
mkdir -p ${RPMDIR}
echo "copying root@${centos610x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}"
scp -r root@${centos610x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}/
scp -r root@${centos610x64}:/root/rpmbuild/SRPMS/* ${RPMDIR}/

#copying file from RHEL7.1
RPMDIR="${RPMBASEDIR}/rhel71"
mkdir -p ${RPMDIR}
echo "copying root@${centos71x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}"
scp -r root@${centos71x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}/
scp -r root@${centos71x64}:/root/rpmbuild/SRPMS/* ${RPMDIR}/

#copying file from RHEL7.2
RPMDIR="${RPMBASEDIR}/rhel72"
mkdir -p ${RPMDIR}
echo "copying root@${centos72x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}"
scp -r root@${centos72x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}/
scp -r root@${centos72x64}:/root/rpmbuild/SRPMS/* ${RPMDIR}/

#copying file from RHEL7.3
RPMDIR="${RPMBASEDIR}/rhel73"
mkdir -p ${RPMDIR}
echo "copying root@${centos73x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}"
scp -r root@${centos73x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}/
scp -r root@${centos73x64}:/root/rpmbuild/SRPMS/* ${RPMDIR}/

#copying file from RHEL7.4
RPMDIR="${RPMBASEDIR}/rhel74"
mkdir -p ${RPMDIR}
echo "copying root@${centos74x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}"
scp -r root@${centos74x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}/
scp -r root@${centos74x64}:/root/rpmbuild/SRPMS/* ${RPMDIR}/

#copying file from RHEL7.5
RPMDIR="${RPMBASEDIR}/rhel75"
mkdir -p ${RPMDIR}
echo "copying root@${centos75x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}"
scp -r root@${centos75x64}:/root/rpmbuild/RPMS/x86_64/* ${RPMDIR}/
scp -r root@${centos75x64}:/root/rpmbuild/SRPMS/* ${RPMDIR}/
