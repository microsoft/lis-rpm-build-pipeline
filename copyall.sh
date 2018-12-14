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

echo "copying root@${centos610x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL610/"
#copying file from RHEL6.10
scp -r root@${centos610x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL610/
scp -r root@${centos610x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL610/
scp -r root@${centos610x32}:/root/rpmbuild/RPMS/i686/* LISISO/RHEL610/
scp -r root@${centos610x32}:/root/rpmbuild/SRPMS/* LISISO/RHEL610/

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

echo "copying root@${centos610x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS610/"
#copying file from CentOS6.10
scp -r root@${centos610x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS610/
scp -r root@${centos610x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS610/
scp -r root@${centos610x32}:/root/rpmbuild/RPMS/i686/* LISISO/CentOS610/
scp -r root@${centos610x32}:/root/rpmbuild/SRPMS/* LISISO/CentOS610/

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

echo "copying root@${centos73x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update9/"
#copying file from RHEL7.3_update9
scp -r root@${centos73x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update9/
scp -r root@${centos73x64update9}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update9/

echo "copying root@${centos73x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update10/"
#copying file from RHEL7.3_update10
scp -r root@${centos73x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update10/
scp -r root@${centos73x64update10}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update10/

echo "copying root@${centos73x64update11}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update11/"
#copying file from RHEL7.3_update11
scp -r root@${centos73x64update11}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update11/
scp -r root@${centos73x64update11}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update11/

echo "copying root@${centos73x64update12}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update12/"
#copying file from RHEL7.3_update12
scp -r root@${centos73x64update12}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update12/
scp -r root@${centos73x64update12}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update12/

echo "copying root@${centos73x64update13}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update13/"
#copying file from RHEL7.3_update13
scp -r root@${centos73x64update13}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update13/
scp -r root@${centos73x64update13}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update13/

echo "copying root@${centos73x64update14}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update14/"
#copying file from RHEL7.3_update14
scp -r root@${centos73x64update14}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update14/
scp -r root@${centos73x64update14}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update14/

echo "copying root@${centos73x64update15}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update15/"
#copying file from RHEL7.3_update15
scp -r root@${centos73x64update15}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update15/
scp -r root@${centos73x64update15}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update15/

echo "copying root@${centos73x64update16}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update16/"
#copying file from RHEL7.3_update16
scp -r root@${centos73x64update16}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL73/update16/
scp -r root@${centos73x64update16}:/root/rpmbuild/SRPMS/* LISISO/RHEL73/update16/

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

echo "copying root@${centos74x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update6/"
#copying file from RHEL7.4_update6
scp -r root@${centos74x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update6/
scp -r root@${centos74x64update6}:/root/rpmbuild/SRPMS/* LISISO/RHEL74/update6/

echo "copying root@${centos74x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update7/"
#copying file from RHEL7.4_update7
scp -r root@${centos74x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update7/
scp -r root@${centos74x64update7}:/root/rpmbuild/SRPMS/* LISISO/RHEL74/update7/

echo "copying root@${centos74x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update8/"
#copying file from RHEL7.4_update8
scp -r root@${centos74x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update8/
scp -r root@${centos74x64update8}:/root/rpmbuild/SRPMS/* LISISO/RHEL74/update8/

echo "copying root@${centos74x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update9/"
#copying file from RHEL7.4_update9
scp -r root@${centos74x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update9/
scp -r root@${centos74x64update9}:/root/rpmbuild/SRPMS/* LISISO/RHEL74/update9/

echo "copying root@${centos74x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update10/"
#copying file from RHEL7.4_update10
scp -r root@${centos74x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL74/update10/
scp -r root@${centos74x64update10}:/root/rpmbuild/SRPMS/* LISISO/RHEL74/update10/

echo "copying root@${centos75x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/"
#copying file from RHEL7.5
scp -r root@${centos75x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/
scp -r root@${centos75x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL75/

echo "copying root@${centos75x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update1"
#copying file from RHEL7.5_update1
scp -r root@${centos75x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update1/
scp -r root@${centos75x64update1}:/root/rpmbuild/SRPMS/* LISISO/RHEL75/update1/

echo "copying root@${centos75x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update2"
#copying file from RHEL7.5_update2
scp -r root@${centos75x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update2/
scp -r root@${centos75x64update2}:/root/rpmbuild/SRPMS/* LISISO/RHEL75/update2/

echo "copying root@${centos75x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update3"
#copying file from RHEL7.5_update3
scp -r root@${centos75x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update3/
scp -r root@${centos75x64update3}:/root/rpmbuild/SRPMS/* LISISO/RHEL75/update3/

echo "copying root@${centos75x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update4"
#copying file from RHEL7.5_update4
scp -r root@${centos75x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update4/
scp -r root@${centos75x64update4}:/root/rpmbuild/SRPMS/* LISISO/RHEL75/update4/

echo "copying root@${centos75x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update5"
#copying file from RHEL7.5_update5
scp -r root@${centos75x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update5/
scp -r root@${centos75x64update5}:/root/rpmbuild/SRPMS/* LISISO/RHEL75/update5/

echo "copying root@${centos75x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update6"
#copying file from RHEL7.5_update6
scp -r root@${centos75x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update6/
scp -r root@${centos75x64update6}:/root/rpmbuild/SRPMS/* LISISO/RHEL75/update6/

echo "copying root@${centos75x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update7"
#copying file from RHEL7.5_update7
scp -r root@${centos75x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL75/update7/
scp -r root@${centos75x64update7}:/root/rpmbuild/SRPMS/* LISISO/RHEL75/update7/

echo "copying root@${centos76x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL76"
#copying file from RHEL7.6
scp -r root@${centos76x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL76/
scp -r root@${centos76x64}:/root/rpmbuild/SRPMS/* LISISO/RHEL76/

echo "copying root@${centos76x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL76/update1"
#copying file from RHEL7.6
scp -r root@${centos76x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RHEL76/update1
scp -r root@${centos76x64update1}:/root/rpmbuild/SRPMS/* LISISO/RHEL76/update1

#copying file from CentOS7.0
echo "copying root@${centos70x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS70/"
scp -r root@${centos70x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS70/
scp -r root@${centos70x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS70/

echo "copying scp -r root@${centos71x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS71/"
#copying file from CentOS7.1
scp -r root@${centos71x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS71/
scp -r root@${centos71x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS71/

echo "copying scp -r root@${centos72x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS72/"
#copying file from CentOS7.2
scp -r root@${centos72x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS72/
scp -r root@${centos72x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS72/

echo "copying root@${centos73x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/"
#copying file from CentOS7.3
scp -r root@${centos73x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/
scp -r root@${centos73x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/

echo "copying root@${centos73x64update}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update/"
#copying file from CentOS7.3_update
scp -r root@${centos73x64update}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update/
scp -r root@${centos73x64update}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update/

echo "copying root@${centos73x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update1/"
#copying file from CentOS7.3_update1
scp -r root@${centos73x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update1/
scp -r root@${centos73x64update1}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update1/

echo "copying root@${centos73x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update2/"
#copying file from CentOS7.3_update2
scp -r root@${centos73x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update2/
scp -r root@${centos73x64update2}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update2/

echo "copying root@${centos73x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update3/"
#copying file from CentOS7.3_update3
scp -r root@${centos73x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update3/
scp -r root@${centos73x64update3}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update3/

echo "copying root@${centos73x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update4/"
#copying file from CentOS7.3_update4
scp -r root@${centos73x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update4/
scp -r root@${centos73x64update4}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update4/

echo "copying root@${centos73x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update5/"
#copying file from CentOS7.3_update5
scp -r root@${centos73x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update5/
scp -r root@${centos73x64update5}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update5/

echo "copying root@${centos73x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update6/"
#copying file from CentOS7.3_update6
scp -r root@${centos73x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update6/
scp -r root@${centos73x64update6}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update6/

echo "copying root@${centos73x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update7/"
#copying file from CentOS7.3_update7
scp -r root@${centos73x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update7/
scp -r root@${centos73x64update7}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update7/

echo "copying root@${centos73x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update8/"
#copying file from CentOS7.3_update8
scp -r root@${centos73x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update8/
scp -r root@${centos73x64update8}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update8/

echo "copying root@${centos73x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update9/"
#copying file from CentOS7.3_update9
scp -r root@${centos73x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update9/
scp -r root@${centos73x64update9}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update9/

echo "copying root@${centos73x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update10/"
#copying file from RHEL7.3_update10
scp -r root@${centos73x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update10/
scp -r root@${centos73x64update10}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update10/

echo "copying root@${centos73x64update11}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update11/"
#copying file from RHEL7.3_update11
scp -r root@${centos73x64update11}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update11/
scp -r root@${centos73x64update11}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update11/

echo "copying root@${centos73x64update12}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update12/"
#copying file from RHEL7.3_update12
scp -r root@${centos73x64update12}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update12/
scp -r root@${centos73x64update12}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update12/

echo "copying root@${centos73x64update13}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update13/"
#copying file from RHEL7.3_update13
scp -r root@${centos73x64update13}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update13/
scp -r root@${centos73x64update13}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update13/

echo "copying root@${centos73x64update14}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update14/"
#copying file from RHEL7.3_update14
scp -r root@${centos73x64update14}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update14/
scp -r root@${centos73x64update14}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update14/

echo "copying root@${centos73x64update15}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update15/"
#copying file from RHEL7.3_update15
scp -r root@${centos73x64update15}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update15/
scp -r root@${centos73x64update15}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update15/

echo "copying root@${centos73x64update16}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update16/"
#copying file from RHEL7.3_update16
scp -r root@${centos73x64update16}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS73/update16/
scp -r root@${centos73x64update16}:/root/rpmbuild/SRPMS/* LISISO/CentOS73/update16/

echo "copying root@${centos74x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/"
#copying file from CentOS7.4
scp -r root@${centos74x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/
scp -r root@${centos74x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS74/

echo "copying root@${centos74x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update1/"
#copying file from CentOS7.4_update1
scp -r root@${centos74x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update1/
scp -r root@${centos74x64update1}:/root/rpmbuild/SRPMS/* LISISO/CentOS74/update1/

echo "copying root@${centos74x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update2/"
#copying file from CentOS7.4_update2
scp -r root@${centos74x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update2/
scp -r root@${centos74x64update2}:/root/rpmbuild/SRPMS/* LISISO/CentOS74/update2/

echo "copying root@${centos74x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update3/"
#copying file from CentOS7.4_update3
scp -r root@${centos74x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update3/
scp -r root@${centos74x64update3}:/root/rpmbuild/SRPMS/* LISISO/CentOS74/update3/

echo "copying root@${centos74x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update4/"
#copying file from CentOS7.4_update4
scp -r root@${centos74x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update4/
scp -r root@${centos74x64update4}:/root/rpmbuild/SRPMS/* LISISO/CentOS74/update4/

echo "copying root@${centos74x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update5/"
#copying file from CentOS7.4_update5
scp -r root@${centos74x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update5/
scp -r root@${centos74x64update5}:/root/rpmbuild/SRPMS/* LISISO/CentOS74/update5/

echo "copying root@${centos74x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update6/"
#copying file from CentOS7.4_update6
scp -r root@${centos74x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update6/
scp -r root@${centos74x64update6}:/root/rpmbuild/SRPMS/* LISISO/CentOS74/update6/

echo "copying root@${centos74x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update7/"
#copying file from CentOS7.4_update7
scp -r root@${centos74x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update7/
scp -r root@${centos74x64update7}:/root/rpmbuild/SRPMS/* LISISO/CentOS74/update7/

echo "copying root@${centos74x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update8/"
#copying file from CentOS7.4_update8
scp -r root@${centos74x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update8/
scp -r root@${centos74x64update8}:/root/rpmbuild/SRPMS/* LISISO/CentOS74/update8/

echo "copying root@${centos74x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update9/"
#copying file from CentOS7.4_update9
scp -r root@${centos74x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update9/
scp -r root@${centos74x64update9}:/root/rpmbuild/SRPMS/* LISISO/CentOS74/update9/

echo "copying root@${centos74x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update10/"
#copying file from CentOS7.4_update10
scp -r root@${centos74x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS74/update10/
scp -r root@${centos74x64update10}:/root/rpmbuild/SRPMS/* LISISO/CentOS74/update10/

echo "copying root@${centos75x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/"
#copying file from CentOS7.5
scp -r root@${centos75x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/
scp -r root@${centos75x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS75/

echo "copying root@${centos75x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update1/"
#copying file from CentOS7.5_update1
scp -r root@${centos75x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update1/
scp -r root@${centos75x64update1}:/root/rpmbuild/SRPMS/* LISISO/CentOS75/update1/

echo "copying root@${centos75x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update2/"
#copying file from CentOS7.5_update2
scp -r root@${centos75x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update2/
scp -r root@${centos75x64update2}:/root/rpmbuild/SRPMS/* LISISO/CentOS75/update2/

echo "copying root@${centos75x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update3/"
#copying file from CentOS7.5_update3
scp -r root@${centos75x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update3/
scp -r root@${centos75x64update3}:/root/rpmbuild/SRPMS/* LISISO/CentOS75/update3/

echo "copying root@${centos75x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update4/"
#copying file from CentOS7.5_update4
scp -r root@${centos75x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update4/
scp -r root@${centos75x64update4}:/root/rpmbuild/SRPMS/* LISISO/CentOS75/update4/

echo "copying root@${centos75x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update5/"
#copying file from CentOS7.5_update5
scp -r root@${centos75x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update5/
scp -r root@${centos75x64update5}:/root/rpmbuild/SRPMS/* LISISO/CentOS75/update5/

echo "copying root@${centos75x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update6/"
#copying file from CentOS7.5_updat6
scp -r root@${centos75x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update6/
scp -r root@${centos75x64update6}:/root/rpmbuild/SRPMS/* LISISO/CentOS75/update6/

echo "copying root@${centos75x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update7/"
#copying file from CentOS7.5_update7
scp -r root@${centos75x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS75/update7/
scp -r root@${centos75x64update7}:/root/rpmbuild/SRPMS/* LISISO/CentOS75/update7/

echo "copying root@${centos76x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS76/"
#copying file from CentOS7.6
scp -r root@${centos76x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS76/
scp -r root@${centos76x64}:/root/rpmbuild/SRPMS/* LISISO/CentOS76/

echo "copying root@${centos76x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS76/update1"
#copying file from CentOS7.6
scp -r root@${centos76x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/CentOS76/update1/
scp -r root@${centos76x64update1}:/root/rpmbuild/SRPMS/* LISISO/CentOS76/update1/


#copying file from Oracle7.0
echo "copying root@${centos70x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle70/"
scp -r root@${centos70x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle70/
scp -r root@${centos70x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle70/

echo "copying scp -r root@${centos71x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle71/"
#copying file from Oracle7.1
scp -r root@${centos71x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle71/
scp -r root@${centos71x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle71/

echo "copying scp -r root@${centos72x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle72/"
#copying file from Oracle7.2
scp -r root@${centos72x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle72/
scp -r root@${centos72x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle72/

echo "copying root@${centos73x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/"
#copying file from Oracle7.3
scp -r root@${centos73x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/
scp -r root@${centos73x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/

echo "copying root@${centos73x64update}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update/"
#copying file from Oracle7.3_update
scp -r root@${centos73x64update}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update/
scp -r root@${centos73x64update}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update/

echo "copying root@${centos73x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update1/"
#copying file from Oracle7.3_update1
scp -r root@${centos73x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update1/
scp -r root@${centos73x64update1}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update1/

echo "copying root@${centos73x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update2/"
#copying file from Oracle7.3_update2
scp -r root@${centos73x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update2/
scp -r root@${centos73x64update2}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update2/

echo "copying root@${centos73x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update3/"
#copying file from Oracle7.3_update3
scp -r root@${centos73x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update3/
scp -r root@${centos73x64update3}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update3/

echo "copying root@${centos73x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update4/"
#copying file from Oracle7.3_update4
scp -r root@${centos73x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update4/
scp -r root@${centos73x64update4}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update4/

echo "copying root@${centos73x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update5/"
#copying file from Oracle7.3_update5
scp -r root@${centos73x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update5/
scp -r root@${centos73x64update5}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update5/

echo "copying root@${centos73x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update6/"
#copying file from Oracle7.3_update6
scp -r root@${centos73x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update6/
scp -r root@${centos73x64update6}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update6/

echo "copying root@${centos73x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update7/"
#copying file from Oracle7.3_update7
scp -r root@${centos73x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update7/
scp -r root@${centos73x64update7}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update7/

echo "copying root@${centos73x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update8/"
#copying file from Oracle7.3_update8
scp -r root@${centos73x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update8/
scp -r root@${centos73x64update8}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update8/

echo "copying root@${centos73x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update9/"
#copying file from Oracle7.3_update9
scp -r root@${centos73x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update9/
scp -r root@${centos73x64update9}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update9/

echo "copying root@${centos73x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update10/"
#copying file from Oracle7.3_update10
scp -r root@${centos73x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update10/
scp -r root@${centos73x64update10}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update10/

echo "copying root@${centos73x64update11}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update11/"
#copying file from Oracle7.3_update11
scp -r root@${centos73x64update11}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update11/
scp -r root@${centos73x64update11}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update11/

echo "copying root@${centos73x64update12}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update12/"
#copying file from Oracle7.3_update12
scp -r root@${centos73x64update12}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update12/
scp -r root@${centos73x64update12}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update12/

echo "copying root@${centos73x64update13}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update13/"
#copying file from Oracle7.3_update13
scp -r root@${centos73x64update13}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update13/
scp -r root@${centos73x64update13}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update13/

echo "copying root@${centos73x64update14}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update14/"
#copying file from Oracle7.3_update14
scp -r root@${centos73x64update14}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update14/
scp -r root@${centos73x64update14}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update14/

echo "copying root@${centos73x64update15}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update15/"
#copying file from Oracle7.3_update15
scp -r root@${centos73x64update15}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update15/
scp -r root@${centos73x64update15}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update15/

echo "copying root@${centos73x64update16}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update16/"
#copying file from Oracle7.3_update16
scp -r root@${centos73x64update16}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update16/
scp -r root@${centos73x64update16}:/root/rpmbuild/SRPMS/* LISISO/Oracle73/update16/

echo "copying root@${centos74x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle73/update15/"
#copying file from Oracle7.4
scp -r root@${centos74x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/
scp -r root@${centos74x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle74/

echo "copying root@${centos74x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update1/"
#copying file from Oracle7.4_update1
scp -r root@${centos74x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update1/
scp -r root@${centos74x64update1}:/root/rpmbuild/SRPMS/* LISISO/Oracle74/update1/

echo "copying root@${centos74x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update2/"
#copying file from Oracle7.4_update2
scp -r root@${centos74x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update2/
scp -r root@${centos74x64update2}:/root/rpmbuild/SRPMS/* LISISO/Oracle74/update2/

echo "copying root@${centos74x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update3/"
#copying file from Oracle7.4_update3
scp -r root@${centos74x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update3/
scp -r root@${centos74x64update3}:/root/rpmbuild/SRPMS/* LISISO/Oracle74/update3/

echo "copying root@${centos74x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update4/"
#copying file from Oracle7.4_update4
scp -r root@${centos74x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update4/
scp -r root@${centos74x64update4}:/root/rpmbuild/SRPMS/* LISISO/Oracle74/update4/

echo "copying root@${centos74x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update5/"
#copying file from Oracle7.4_update5
scp -r root@${centos74x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update5/
scp -r root@${centos74x64update5}:/root/rpmbuild/SRPMS/* LISISO/Oracle74/update5/

echo "copying root@${centos74x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update6/"
#copying file from Oracle7.4_update6
scp -r root@${centos74x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update6/
scp -r root@${centos74x64update6}:/root/rpmbuild/SRPMS/* LISISO/Oracle74/update6/

echo "copying root@${centos74x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update7/"
#copying file from Oracle7.4_update7
scp -r root@${centos74x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update7/
scp -r root@${centos74x64update7}:/root/rpmbuild/SRPMS/* LISISO/Oracle74/update7/

echo "copying root@${centos74x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update8/"
#copying file from Oracle7.4_update8
scp -r root@${centos74x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update8/
scp -r root@${centos74x64update8}:/root/rpmbuild/SRPMS/* LISISO/Oracle74/update8/

echo "copying root@${centos74x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update9/"
#copying file from Oracle7.4_update9
scp -r root@${centos74x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update9/
scp -r root@${centos74x64update9}:/root/rpmbuild/SRPMS/* LISISO/Oracle74/update9/

echo "copying root@${centos74x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update10/"
#copying file from Oracle7.4_update10
scp -r root@${centos74x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle74/update10/
scp -r root@${centos74x64update10}:/root/rpmbuild/SRPMS/* LISISO/Oracle74/update10/

echo "copying root@${centos75x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/"
#copying file from Oracle7.5
scp -r root@${centos75x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/
scp -r root@${centos75x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle75/

echo "copying root@${centos75x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update1"
#copying file from Oracle7.5_update1
scp -r root@${centos75x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update1/
scp -r root@${centos75x64update1}:/root/rpmbuild/SRPMS/* LISISO/Oracle75/update1/

echo "copying root@${centos75x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update2"
#copying file from Oracle7.5_update2
scp -r root@${centos75x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update2/
scp -r root@${centos75x64update2}:/root/rpmbuild/SRPMS/* LISISO/Oracle75/update2/

echo "copying root@${centos75x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update3"
#copying file from Oracle7.5_update3
scp -r root@${centos75x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update3/
scp -r root@${centos75x64update3}:/root/rpmbuild/SRPMS/* LISISO/Oracle75/update3/

echo "copying root@${centos75x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update4"
#copying file from Oracle7.5_update4
scp -r root@${centos75x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update4/
scp -r root@${centos75x64update4}:/root/rpmbuild/SRPMS/* LISISO/Oracle75/update4/

echo "copying root@${centos75x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update5"
#copying file from Oracle7.5_update5
scp -r root@${centos75x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update5/
scp -r root@${centos75x64update5}:/root/rpmbuild/SRPMS/* LISISO/Oracle75/update5/

echo "copying root@${centos75x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update6"
#copying file from Oracle7.5_update6
scp -r root@${centos75x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update6/
scp -r root@${centos75x64update6}:/root/rpmbuild/SRPMS/* LISISO/Oracle75/update6/

echo "copying root@${centos75x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update7"
#copying file from Oracle7.5_update7
scp -r root@${centos75x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle75/update7/
scp -r root@${centos75x64update7}:/root/rpmbuild/SRPMS/* LISISO/Oracle75/update7/

echo "copying root@${centos76x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle76"
#copying file from Oracle7.6
scp -r root@${centos76x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle76/
scp -r root@${centos76x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle76/

echo "copying root@${centos76x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle76/update1"
#copying file from Oracle7.6
scp -r root@${centos76x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle76/update1
scp -r root@${centos76x64update1}:/root/rpmbuild/SRPMS/* LISISO/Oracle76/update1

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

echo "copying root@${centos610x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle610/"
#copying file from Oracle6.10
scp -r root@${centos610x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/Oracle610/
scp -r root@${centos610x64}:/root/rpmbuild/SRPMS/* LISISO/Oracle610/
scp -r root@${centos610x32}:/root/rpmbuild/RPMS/i686/* LISISO/Oracle610/
scp -r root@${centos610x32}:/root/rpmbuild/SRPMS/* LISISO/Oracle610/

