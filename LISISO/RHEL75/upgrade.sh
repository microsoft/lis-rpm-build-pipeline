#################################################################
# This script is to automate Upgradation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################
kernelver=`uname -r`
regex1='3.10.0-862.2.3'
regex2='3.10.0-862.3.2'
regex3='3.10.0-862.3.3'
regex4='3.10.0-862.6.3'
regex5='3.10.0-862.9.1'
regex6='3.10.0-862.11.6'
regex7='3.10.0-862.14.4'
regex8='3.10.0-862.25.3'

if [[ "$kernelver" =~ $regex1 ]]; then
   {
        cd update1
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
	rpm -Uvh $kmodrpm $msrpm
        msexit=$?
        if [ "$msexit" != 0 ]; then
               echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
               exit 1;
        else
               echo " Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
        fi
	fi
}

elif [[ "$kernelver" =~ $regex2 ]]; then
   {
        cd update2
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
        rpm -Uvh $kmodrpm $msrpm
        msexit=$?
        if [ "$msexit" != 0 ]; then
               echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
               exit 1;
        else
               echo " Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
        fi
        fi
}

elif [[ "$kernelver" =~ $regex3 ]]; then
   {
        cd update3
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
        rpm -Uvh $kmodrpm $msrpm
        msexit=$?
        if [ "$msexit" != 0 ]; then
               echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
               exit 1;
        else
               echo " Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
        fi
        fi
}

elif [[ "$kernelver" =~ $regex4 ]]; then
   {
        cd update4
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
        rpm -Uvh $kmodrpm $msrpm
        msexit=$?
        if [ "$msexit" != 0 ]; then
               echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
               exit 1;
        else
               echo " Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
        fi
        fi
}

elif [[ "$kernelver" =~ $regex5 ]]; then
   {
        cd update5
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
        rpm -Uvh $kmodrpm $msrpm
        msexit=$?
        if [ "$msexit" != 0 ]; then
               echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
               exit 1;
        else
               echo " Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
        fi
        fi
}

elif [[ "$kernelver" =~ $regex6 ]]; then
   {
        cd update6
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
        rpm -Uvh $kmodrpm $msrpm
        msexit=$?
        if [ "$msexit" != 0 ]; then
               echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
               exit 1;
        else
               echo " Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
        fi
        fi
}

elif [[ "$kernelver" =~ $regex7 ]]; then
   {
        cd update7
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
        rpm -Uvh $kmodrpm $msrpm
        msexit=$?
        if [ "$msexit" != 0 ]; then
               echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
               exit 1;
        else
               echo " Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
        fi
        fi
}

elif [[ "$kernelver" =~ $regex8 ]]; then
   {
        cd update8
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
        rpm -Uvh $kmodrpm $msrpm
        msexit=$?
        if [ "$msexit" != 0 ]; then
               echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
               exit 1;
        else
               echo " Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
        fi
        fi
}

#Making sure both rpms are present
elif [ "$kernelver" == "3.10.0-862.el7.x86_64" ] ;then
	kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
        echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
	rpm -Uvh $kmodrpm $msrpm
        msexit=$?
        if [ "$msexit" != 0 ]; then
               echo "Microsoft-Hyper-V rpm Upgradation failed, Exiting"
               exit 1;
        else
               echo " Linux Integration Services for Hyper-V has been Upgraded. Please reboot your system"
        fi
      
	else 
       		echo "RPM's are missing"
	fi

else
        echo "Kernel version not supported, Exiting."
        exit 1
fi



