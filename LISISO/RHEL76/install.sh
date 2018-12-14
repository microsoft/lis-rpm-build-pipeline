################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################
kernelver=`uname -r`
regex1='3.10.0-957.1.3.el7.x86_64'

if [[ "$kernelver" =~ $regex1 ]]; then
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
        fi
   }

#Making sure both rpms are present
elif [ "$kernelver" == "3.10.0-957.el7.x86_64" ] ;then
	kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
	if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
	echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
	rpm -ivh $kmodrpm
        kmodexit=$?
        if [ "$kmodexit" == 0 ]; then
              rpm -ivh $msrpm
              msexit=$?
              if [ "$msexit" != 0 ]; then
                     echo "Microsoft-Hyper-V RPM installation failed, Exiting."
                     exit 1;
              else
                     echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
              fi
        else
              echo "Kmod RPM installation failed, Exiting."
              exit 1
        fi
	else 
       		echo "RPM's are missing"
	fi

else
        echo "Kernel version not supported, Exiting."
        exit 1
fi


