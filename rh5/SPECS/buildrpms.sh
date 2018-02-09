#!/bin/bash

# This scripts neeeds to be run in /{user}/rpmbuild/SPECS

cd /$HOME/rpmbuild/SPECS

rm -rf config

rhel_major=$(grep -Eoh '[0-9]+\.[0-9]+' /etc/{issue,*release} | awk -F'.' '{ print $1; exit }')
rhel_minor=$(grep -Eoh '[0-9]+\.[0-9]+' /etc/{issue,*release} | awk -F'.' '{ print $2; exit }')
rhel_release_code=$((rhel_major << 8 | rhel_minor))

Runbuild_novss()
{
	rm -vrf /root/rpmbuild/RPMS/*
        rm -vrf /root/rpmbuild/SRPMS/*
#        rpmbuild --clean /root/rpmbuild/SPECS/lis-rhel5_novss.spec
       rpmbuild --clean /root/rpmbuild/SPECS/lis-centos5_novss.spec
#        rpmbuild -ba /root/rpmbuild/SPECS/lis-rhel5_novss.spec
       rpmbuild -ba /root/rpmbuild/SPECS/lis-centos5_novss.spec

}

Runbuild()
{
        rm -vrf /root/rpmbuild/RPMS/*
        rm -vrf /root/rpmbuild/SPECS/SRPMS/*
        rpmbuild --clean /root/rpmbuild/SPECS/lis-rhel5.spec
#	rpmbuild --clean /root/rpmbuild/SPECS/lis-centos5.spec
        rpmbuild -ba /root/rpmbuild/SPECS/lis-rhel5.spec
#	rpmbuild -ba /root/rpmbuild/SPECS/lis-centos5.spec	
}

# Determine kernel architecture version
osbit=`uname -m`

# Get kernel version and trim last 3 charcter for preamble . 
kernver=$(echo `uname -r` | rev |cut -c 5- | rev)
lastno=$(echo $kernver | rev |cut -c 1 | rev )
nextno=$((lastno+1))
nextkern=$(echo `uname -r` | rev |cut -c 6- | rev)$nextno

# Now create a preamble file with current kernel and next kernel.


#Selecting appropriate rpm, 64 bit rpm for x86_64 based VM
if [ "$osbit" == "x86_64" ]; then
	{
		echo -e "%defattr (-,root,root)\n/lib/modules/`uname -r`\n%config /etc/depmod.d/hyperv.conf" > config
		echo -e "REQUIRES :  kernel >= $kernver\nREQUIRES :  kernel < $nextkern" > preamble
		if [ ${rhel_release_code} -gt "1283" ] ; then
			Runbuild
		else
			Runbuild_novss
		fi
	}
elif [ "$osbit" == "i686" ]; then
	{
		echo -e "%defattr (-,root,root)\n/lib/modules/`uname -r`PAE\n%config /etc/depmod.d/hyperv.conf" > config
#		echo -e "REQUIRES :  kernel >= $kernver.el5PAE\nREQUIRES :  kernel < $nextkern.el5PAE" > preamble
		if [ ${rhel_release_code} -gt "1283" ] ; then
                        Runbuild
                else
                        Runbuild_novss
                fi
		sleep 1
		mkdir tmp
		cp ../RPMS/i686/kmod-microsoft-hyper-v-PAE* tmp/
		rm -rf config
		# build rpm's for non PAE kernel now
		echo -e "%defattr (-,root,root)\n/lib/modules/`uname -r`\n%config /etc/depmod.d/hyperv.conf" > config
#		echo -e "REQUIRES :  kernel >= $kernver\nREQUIRES :  kernel < $nextkern" > preamble
		if [ ${rhel_release_code} -gt "1283" ] ; then
                        Runbuild
                else
                        Runbuild_novss
                fi
		cp -r tmp/kmod-microsoft-hyper-v-PAE* ../RPMS/i686/
		rm -rf tmp
		
	}
fi

# cleanup 
