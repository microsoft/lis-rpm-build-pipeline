#!/bin/bash

#source the ips.sh

. ./ips.sh
#copying file from RPMS5.0
echo "copying scp -r root@${centos53x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS52/"
scp -r root@${centos52x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS52/lis-52/x86_64/
scp -r root@${centos52x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS52/
scp -r root@${centos52x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS52/lis-52/x86/

echo "copying scp -r root@${centos53x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS53/"
#copying file from RPMS5.3
scp -r root@${centos53x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS53/lis-53/x86_64/
scp -r root@${centos53x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS53/
scp -r root@${centos53x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS53/lis-53/x86/

echo "copying scp -r root@${centos54x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS54/"
#copying file from RPMS5.4
scp -r root@${centos54x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS54/lis-54/x86_64/
scp -r root@${centos54x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS54/
scp -r root@${centos54x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS54/lis-54/x86/

echo "copying scp -r root@${centos55x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS55/"
#copying file from RPMS5.5
scp -r root@${centos55x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS55/lis-55/x86_64/
scp -r root@${centos55x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS55/
scp -r root@${centos55x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS55/lis-55/x86/

echo "copying scp -r root@${centos56x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS56/"
#copying file from RPMS5.6
scp -r root@${centos56x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS56/lis-56/x86_64/
scp -r root@${centos56x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS56/
scp -r root@${centos56x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS56/lis-56/x86/

echo "copying scp -r root@${centos57x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS57/"
#copying file from RPMS5.7
scp -r root@${centos57x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS57/lis-57/x86_64/
scp -r root@${centos57x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS57/
scp -r root@${centos57x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS57/lis-57/x86/

echo "copying scp -r root@${centos58x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS58/"
#copying file from RPMS5.8
scp -r root@${centos58x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS58/lis-58/x86_64/
scp -r root@${centos58x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS58/
scp -r root@${centos58x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS58/lis-58/x86/

echo "copying scp -r root@${centos59x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS59/"
#copying file from RPMS5.9
scp -r root@${centos59x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS59/lis-59/x86_64/
scp -r root@${centos59x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS59/
scp -r root@${centos59x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS59/lis-59/x86/

echo "copying scp -r root@${centos510x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS510/"
#copying file from RPMS5.10
scp -r root@${centos510x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS510/lis-510/x86_64/
scp -r root@${centos510x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS510/
scp -r root@${centos510x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS510/lis-510/x86/

echo "copying scp -r root@${centos511x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS511/"
#copying file from RPMS5.11
scp -r root@${centos511x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS511/lis-511/x86_64/
scp -r root@${centos511x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS511/
scp -r root@${centos511x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS511/lis-511/x86/

echo "copying scp -r root@${centos511x64_update}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS511_UPDATE/"
#copying file from RPMS5.11_update
scp -r root@${centos511x64_update}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS511_UPDATE/lis-511/x86_64/
scp -r root@${centos511x64_update}:/root/rpmbuild/SRPMS/* LISISO/RPMS511_UPDATE/
scp -r root@${centos511x32_update}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS511_UPDATE/lis-511/x86/

#copying file from RPMS6.0
echo "copying root@${centos60x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS60/"
scp -r root@${centos60x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS60/
scp -r root@${centos60x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS60/
scp -r root@${centos60x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS60/
scp -r root@${centos60x32}:/root/rpmbuild/SRPMS/* LISISO/RPMS60/

echo "copying scp -r root@${centos61x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS61/"
#copying file from RPMS6.1
scp -r root@${centos61x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS61/
scp -r root@${centos61x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS61/
scp -r root@${centos61x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS61/
scp -r root@${centos61x32}:/root/rpmbuild/SRPMS/* LISISO/RPMS61/

echo "copying scp -r root@${centos62x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS62/"
#copying file from RPMS6.2
scp -r root@${centos62x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS62/
scp -r root@${centos62x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS62/
scp -r root@${centos62x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS62/
scp -r root@${centos62x32}:/root/rpmbuild/SRPMS/* LISISO/RPMS62/

echo "copying root@${centos63x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS63/"
#copying file from RPMS6.3
scp -r root@${centos63x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS63/
scp -r root@${centos63x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS63/
scp -r root@${centos63x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS63/
scp -r root@${centos63x32}:/root/rpmbuild/SRPMS/* LISISO/RPMS63/

echo "copying root@${centos64x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS64/"
#copying file from RPMS6.4
scp -r root@${centos64x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS64/
scp -r root@${centos64x64updte}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS64/update/
scp -r root@${centos64x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS64/
scp -r root@${centos64x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS64/
scp -r root@${centos64x32}:/root/rpmbuild/SRPMS/* LISISO/RPMS64/

echo "copying root@${centos65x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS65/"
#copying file from RPMS6.5
scp -r root@${centos65x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS65/
scp -r root@${centos65x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS65/
scp -r root@${centos65x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS65/
scp -r root@${centos65x32}:/root/rpmbuild/SRPMS/* LISISO/RPMS65/

echo "copying root@${centos66x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS66/"
#copying file from RPMS6.6
scp -r root@${centos66x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS66/
scp -r root@${centos66x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS66/
scp -r root@${centos66x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS66/
scp -r root@${centos66x32}:/root/rpmbuild/SRPMS/* LISISO/RPMS66/

echo "copying root@${centos67x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS67/"
#copying file from RPMS6.7
scp -r root@${centos67x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS67/
scp -r root@${centos67x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS67/
scp -r root@${centos67x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS67/
scp -r root@${centos67x32}:/root/rpmbuild/SRPMS/* LISISO/RPMS67/

echo "copying root@${centos68x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS68/"
#copying file from RPMS6.8
scp -r root@${centos68x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS68/
scp -r root@${centos68x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS68/
scp -r root@${centos68x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS68/
scp -r root@${centos68x32}:/root/rpmbuild/SRPMS/* LISISO/RPMS68/

echo "copying root@${centos69x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS69/"
#copying file from RPMS6.9
scp -r root@${centos69x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS69/
scp -r root@${centos69x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS69/
scp -r root@${centos69x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS69/
scp -r root@${centos69x32}:/root/rpmbuild/SRPMS/* LISISO/RPMS69/

echo "copying root@${centos610x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS610/"
#copying file from RPMS6.10
scp -r root@${centos610x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS610/
scp -r root@${centos610x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS610/
scp -r root@${centos610x32}:/root/rpmbuild/RPMS/i686/* LISISO/RPMS610/
scp -r root@${centos610x32}:/root/rpmbuild/SRPMS/* LISISO/RPMS610/

#copying file from RPMS7.0
echo "copying root@${centos70x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS70/"
scp -r root@${centos70x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS70/
scp -r root@${centos70x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS70/

echo "copying scp -r root@${centos71x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS71/"
#copying file from RPMS7.1
scp -r root@${centos71x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS71/
scp -r root@${centos71x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS71/

echo "copying scp -r root@${centos72x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS72/"
#copying file from RPMS7.2
scp -r root@${centos72x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS72/
scp -r root@${centos72x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS72/

echo "copying root@${centos73x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/"
#copying file from RPMS7.3
scp -r root@${centos73x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/
scp -r root@${centos73x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/

echo "copying root@${centos73x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update1/"
#copying file from RPMS7.3_update1
scp -r root@${centos73x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update1/
scp -r root@${centos73x64update1}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update1/

echo "copying root@${centos73x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update2/"
#copying file from RPMS7.3_update2
scp -r root@${centos73x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update2/
scp -r root@${centos73x64update2}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update2/

echo "copying root@${centos73x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update3/"
#copying file from RPMS7.3_update3
scp -r root@${centos73x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update3/
scp -r root@${centos73x64update3}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update3/

echo "copying root@${centos73x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update4/"
#copying file from RPMS7.3_update4
scp -r root@${centos73x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update4/
scp -r root@${centos73x64update4}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update4/

echo "copying root@${centos73x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update5/"
#copying file from RPMS7.3_update5
scp -r root@${centos73x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update5/
scp -r root@${centos73x64update5}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update5/

echo "copying root@${centos73x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update6/"
#copying file from RPMS7.3_update6
scp -r root@${centos73x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update6/
scp -r root@${centos73x64update6}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update6/

echo "copying root@${centos73x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update7/"
#copying file from RPMS7.3_update7
scp -r root@${centos73x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update7/
scp -r root@${centos73x64update7}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update7/

echo "copying root@${centos73x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update8/"
#copying file from RPMS7.3_update8
scp -r root@${centos73x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update8/
scp -r root@${centos73x64update8}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update8/

echo "copying root@${centos73x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update9/"
#copying file from RPMS7.3_update9
scp -r root@${centos73x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update9/
scp -r root@${centos73x64update9}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update9/

echo "copying root@${centos73x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update10/"
#copying file from RPMS7.3_update10
scp -r root@${centos73x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update10/
scp -r root@${centos73x64update10}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update10/

echo "copying root@${centos73x64update11}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update11/"
#copying file from RHEL7.3_update11
scp -r root@${centos73x64update11}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update11/
scp -r root@${centos73x64update11}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update11/

echo "copying root@${centos73x64update12}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update12/"
#copying file from RHEL7.3_update12
scp -r root@${centos73x64update12}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update12/
scp -r root@${centos73x64update12}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update12/

echo "copying root@${centos73x64update13}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update13/"
#copying file from RHEL7.3_update13
scp -r root@${centos73x64update13}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update13/
scp -r root@${centos73x64update13}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update13/

echo "copying root@${centos73x64update14}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update14/"
#copying file from RHEL7.3_update14
scp -r root@${centos73x64update14}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update14/
scp -r root@${centos73x64update14}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update14/

echo "copying root@${centos73x64update15}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update15/"
#copying file from RHEL7.3_update15
scp -r root@${centos73x64update15}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update15/
scp -r root@${centos73x64update15}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update15/

echo "copying root@${centos73x64update16}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update16/"
#copying file from RHEL7.3_update16
scp -r root@${centos73x64update16}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update16/
scp -r root@${centos73x64update16}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update16/

echo "copying root@${centos73x64update17}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update17/"
#copying file from RHEL7.3_update17
scp -r root@${centos73x64update17}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update17/
scp -r root@${centos73x64update17}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update17/

echo "copying root@${centos73x64update18}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update18/"
#copying file from RHEL7.3_update18
scp -r root@${centos73x64update18}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS73/update18/
scp -r root@${centos73x64update18}:/root/rpmbuild/SRPMS/* LISISO/RPMS73/update18/

echo "copying root@${centos74x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/"
#copying file from RPMS7.4
scp -r root@${centos74x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/
scp -r root@${centos74x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/

echo "copying root@${centos74x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update1/"
#copying file from RPMS7.4_update1
scp -r root@${centos74x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update1/
scp -r root@${centos74x64update1}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/update1/

echo "copying root@${centos74x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update2/"
#copying file from RPMS7.4_update2
scp -r root@${centos74x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update2/
scp -r root@${centos74x64update2}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/update2/

echo "copying root@${centos74x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update3/"
#copying file from RPMS7.4_update3
scp -r root@${centos74x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update3/
scp -r root@${centos74x64update3}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/update3/

echo "copying root@${centos74x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update4/"
#copying file from RPMS7.4_update4
scp -r root@${centos74x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update4/
scp -r root@${centos74x64update4}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/update4/

echo "copying root@${centos74x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update5/"
#copying file from RPMS7.4_update5
scp -r root@${centos74x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update5/
scp -r root@${centos74x64update5}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/update5/

echo "copying root@${centos74x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update6/"
#copying file from RPMS7.4_update6
scp -r root@${centos74x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update6/
scp -r root@${centos74x64update6}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/update6/

echo "copying root@${centos74x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update7/"
#copying file from RPMS7.4_update7
scp -r root@${centos74x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update7/
scp -r root@${centos74x64update7}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/update7/

echo "copying root@${centos74x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update8/"
#copying file from RPMS7.4_update8
scp -r root@${centos74x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update8/
scp -r root@${centos74x64update8}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/update8/

echo "copying root@${centos74x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update9/"
#copying file from RPMS7.4_update9
scp -r root@${centos74x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update9/
scp -r root@${centos74x64update9}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/update9/

echo "copying root@${centos74x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update10/"
#copying file from RPMS7.4_update10
scp -r root@${centos74x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update10/
scp -r root@${centos74x64update10}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/update10/

echo "copying root@${centos74x64update11}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update11/"
#copying file from RPMS7.4_update11
scp -r root@${centos74x64update11}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS74/update11/
scp -r root@${centos74x64update11}:/root/rpmbuild/SRPMS/* LISISO/RPMS74/update11/

echo "copying root@${centos75x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/"
#copying file from RPMS7.5
scp -r root@${centos75x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/
scp -r root@${centos75x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS75/

echo "copying root@${centos75x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update1/"
#copying file from RPMS7.5_update1
scp -r root@${centos75x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update1/
scp -r root@${centos75x64update1}:/root/rpmbuild/SRPMS/* LISISO/RPMS75/update1/

echo "copying root@${centos75x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update2/"
#copying file from RPMS7.5_update2
scp -r root@${centos75x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update2/
scp -r root@${centos75x64update2}:/root/rpmbuild/SRPMS/* LISISO/RPMS75/update2/

echo "copying root@${centos75x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update3/"
#copying file from RPMS7.5_update3
scp -r root@${centos75x64update3}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update3/
scp -r root@${centos75x64update3}:/root/rpmbuild/SRPMS/* LISISO/RPMS75/update3/

echo "copying root@${centos75x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update4/"
#copying file from RPMS7.5_update4
scp -r root@${centos75x64update4}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update4/
scp -r root@${centos75x64update4}:/root/rpmbuild/SRPMS/* LISISO/RPMS75/update4/

echo "copying root@${centos75x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update5/"
#copying file from RPMS7.5_update5
scp -r root@${centos75x64update5}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update5/
scp -r root@${centos75x64update5}:/root/rpmbuild/SRPMS/* LISISO/RPMS75/update5/

echo "copying root@${centos75x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update6/"
#copying file from RPMS7.5_updat6
scp -r root@${centos75x64update6}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update6/
scp -r root@${centos75x64update6}:/root/rpmbuild/SRPMS/* LISISO/RPMS75/update6/

echo "copying root@${centos75x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update7/"
#copying file from RPMS7.5_update7
scp -r root@${centos75x64update7}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update7/
scp -r root@${centos75x64update7}:/root/rpmbuild/SRPMS/* LISISO/RPMS75/update7/

echo "copying root@${centos75x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update8/"
#copying file from RPMS7.5_update8
scp -r root@${centos75x64update8}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update8/
scp -r root@${centos75x64update8}:/root/rpmbuild/SRPMS/* LISISO/RPMS75/update8/

echo "copying root@${centos75x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update9/"
#copying file from RPMS7.5_update9
scp -r root@${centos75x64update9}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update9/
scp -r root@${centos75x64update9}:/root/rpmbuild/SRPMS/* LISISO/RPMS75/update9/

echo "copying root@${centos75x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update10/"
#copying file from RPMS7.5_update10
scp -r root@${centos75x64update10}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS75/update10/
scp -r root@${centos75x64update10}:/root/rpmbuild/SRPMS/* LISISO/RPMS75/update10/

echo "copying root@${centos76x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS76/"
#copying file from RPMS7.6
scp -r root@${centos76x64}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS76/
scp -r root@${centos76x64}:/root/rpmbuild/SRPMS/* LISISO/RPMS76/

echo "copying root@${centos76x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS76/update1"
#copying file from RPMS7.6
scp -r root@${centos76x64update1}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS76/update1/
scp -r root@${centos76x64update1}:/root/rpmbuild/SRPMS/* LISISO/RPMS76/update1/

echo "copying root@${centos76x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS76/update2"
#copying file from RPMS7.6_update2
scp -r root@${centos76x64update2}:/root/rpmbuild/RPMS/x86_64/* LISISO/RPMS76/update2/
scp -r root@${centos76x64update2}:/root/rpmbuild/SRPMS/* LISISO/RPMS76/update2/
