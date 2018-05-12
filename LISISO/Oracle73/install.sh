################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################

# Determine kernel architecture version 
osbit=`uname -m`
kernelver=`uname -r`

regex='3.10.0-514.10+\.[0-9]+'
regex1='3.10.0-514.16.1'
regex2='3.10.0-514.21.1'
regex3='3.10.0-514.21.2'
regex4='3.10.0-514.26.1'
regex5='3.10.0-514.26.2'
regex6='3.10.0-514.28.1'
regex7='3.10.0-514.35.1'
regex8='3.10.0-514.36.5'
regex9='3.10.0-514.41.1'
regex10='3.10.0-514.44.1'
regex11='3.10.0-514.48.1'
regex12='3.10.0-514.48.3'
if [[ "$kernelver" =~ $regex ]]; then
   {
        cd update
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
         echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
         rpm -ivh $kmodrpm $msrpm
         kmodexit=$?
         if [ "$kmodexit" != 0 ]; then
            echo "Microsoft-Hyper-V RPM installation failed, Exiting."
            exit 1;
         else
            echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
            exit 0
         fi
        fi
   }

elif [[ "$kernelver" =~ $regex3 ]] || [[ "$kernelver" =~ $regex4 ]]   ; then
    {
        cd update3
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
           echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
           rpm -ivh $kmodrpm $msrpm
           kmodexit=$?
           if [ "$kmodexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
           else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
                     exit 0
           fi
        else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi

    }

elif [[ "$kernelver" =~ $regex5 ]] ; then
    {
        cd update4
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
           echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
           rpm -ivh $kmodrpm $msrpm
           kmodexit=$?
           if [ "$kmodexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
           else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
                     exit 0
           fi
        else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi

    }

elif [[ "$kernelver" =~ $regex6 ]] ; then
    {
        cd update5
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
           echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
           rpm -ivh $kmodrpm $msrpm
           kmodexit=$?
           if [ "$kmodexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
           else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
                     exit 0
           fi
        else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi

    }
elif [[ "$kernelver" =~ $regex7 ]] ; then
    {
        cd update6
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
           echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
           rpm -ivh $kmodrpm $msrpm
           kmodexit=$?
           if [ "$kmodexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
           else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
                     exit 0
           fi
        else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi

    }

elif [[ "$kernelver" =~ $regex8 ]] ; then
    {
        cd update7
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
           echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
           rpm -ivh $kmodrpm $msrpm
           kmodexit=$?
           if [ "$kmodexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
           else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
                     exit 0
           fi
        else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi

    }

elif [[ "$kernelver" =~ $regex9 ]] ; then
    {
        cd update8
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
           echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
           rpm -ivh $kmodrpm $msrpm
           kmodexit=$?
           if [ "$kmodexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
           else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
                     exit 0
           fi
        else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi

    }

elif [[ "$kernelver" =~ $regex10 ]] ; then
    {
        cd update9
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
           echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
           rpm -ivh $kmodrpm $msrpm
           kmodexit=$?
           if [ "$kmodexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
           else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
                     exit 0
           fi
        else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi

    }

elif [[ "$kernelver" =~ $regex12 ]] ; then
    {
        cd update11
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
           echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
           rpm -ivh $kmodrpm $msrpm
           kmodexit=$?
           if [ "$kmodexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
           else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
                     exit 0
           fi
        else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi

    }


elif [[ "$kernelver" =~ $regex2 ]] ; then
    {
        cd update2
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
           echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
           rpm -ivh $kmodrpm $msrpm
           kmodexit=$?
           if [ "$kmodexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
           else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
                     exit 0
           fi
        else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi

    }

elif [[ "$kernelver" =~ $regex1 ]] ; then 
    {
	cd update1
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
           echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
           rpm -ivh $kmodrpm $msrpm
           kmodexit=$?
	   if [ "$kmodexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
           else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
                     exit 0
           fi
	else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi

    }

elif [[ "$kernelver" =~ $regex11 ]] ; then
    {
        cd update10
        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
           echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
           rpm -ivh $kmodrpm $msrpm
           kmodexit=$?
           if [ "$kmodexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
           else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
                     exit 0
           fi
        else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi

    }

elif [ "$kernelver" == "3.10.0-514.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.2.2.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.6.1.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.6.2.el7.x86_64" ] ;then
   {
	kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`

	if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
	  echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
          rpm -ivh $kmodrpm $msrpm
          kmodexit=$?
          if [ "$kmodexit" != 0 ]; then
          	echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                exit 1;
          else
                echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
          fi
	fi
    }
else 
	echo "Kernel version not supported, Exiting."
	exit 1
fi



