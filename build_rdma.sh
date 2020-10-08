#!/bin/bash 
set -e 

BRANCH="4.3.5"
RELEASE_VERSION="4.3.5"
SOURCE="https://github.com/LIS/lis-next"

RDMA_PKG_FOLDER=msft-rdma-drivers-${RELEASE_VERSION}
RDMA_PKG_NAME=${RDMA_PKG_FOLDER}.tar.gz

[[ -z $RELEASE_VERSION ]] && {
    echo "RELEASE_VERSION MISSING"
    exit 1
}

[[ -z $BRANCH ]] && {
    echo "BRANCH MISSING"
    exit 1
}

RPMVERSION="${RELEASE_VERSION}.144"

echo -e "\n ___Cleaning___ \n"
[[ -d ${RDMA_PKG_FOLDER} ]] && rm -rf ${RDMA_PKG_FOLDER}
[[ -f ${RDMA_PKG_NAME} ]] && rm -rf ${RDMA_PKG_NAME}

echo -e "\n____Build rh7 ${RPMVERSION}_____\n"
python createrpms.py rh7 "${RPMVERSION}" "${SOURCE}" --branch "${BRANCH}"
bash copyall_rdma.sh ${RELEASE_VERSION}

echo -e "\n____Build rh6 ${RPMVERSION}_____\n"
python createrpms.py rh6 "${RPMVERSION}" "${SOURCE}" --branch "${BRANCH}"
bash copyall_rdma.sh ${RELEASE_VERSION}

RPMVERSION="${RELEASE_VERSION}.142"

echo -e "\n ____Build rh7 ${RPMVERSION} _____\n"
python createrpms.py rh7 "${RPMVERSION}" "${SOURCE}" --branch "${BRANCH}"
bash copyall_rdma.sh ${RELEASE_VERSION}

echo -e "\n ____Build rh6 ${RPMVERSION} _____\n"
python createrpms.py rh6 "${RPMVERSION}" "${SOURCE}" --branch "${BRANCH}"
bash copyall_rdma.sh ${RELEASE_VERSION}

echo -e "\n ______Creating tarball ${RDMA_PKG_NAME}____ \n"
tar -zcvf ${RDMA_PKG_NAME} ${RDMA_PKG_FOLDER}

echo -e "\n ______Building ${RDMA_PKG_FOLDER} RPM_____ \n"
[[ -d ~/rpmbuild ]] && rm -rf ~/rpmbuild
mkdir -p ~/rpmbuild/{BUILD,RPMS,SOURCES,SPECS,SRPMS}
cp lis-rdma-wrapper.spec /root/rpmbuild/SPECS/
cp ${RDMA_PKG_NAME} /root/rpmbuild/SOURCES/
sed s/0.0.0.0/${RELEASE_VERSION}/g -i /root/rpmbuild/SPECS/lis-rdma-wrapper.spec
rpmbuild -ba /root/rpmbuild/SPECS/lis-rdma-wrapper.spec
