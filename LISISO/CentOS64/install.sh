################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################

# Determine kernel architecture version 
osbit=`uname -m`
kernelver=`uname -r`
kernel='2.6.32-358'

regex='([0-9]+\.[0-9]+\.[0-9]+)-([0-9]+).([0-9]+)'

if [[ "${kernelver}" =~ $regex  ]]; then
                kernelVersion=${BASH_REMATCH[0]}
fi


#Selecting appropriate rpm, 64 bit rpm for x86_64 based VM
if [ "$osbit" == "x86_64" ]; then
       {
              kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
              msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
       }
elif [ "$osbit" == "i686" ]; then
       {
              kmodrpm=`ls kmod-microsoft-hyper-v-*.i686.rpm`
              msrpm=`ls microsoft-hyper-v-*.i686.rpm`
       }
fi

if [[ $kernelVersion == $kernel ]]; then
   { 
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

else
    {
        cd update

	#Selecting appropriate rpm, 64 bit rpm for x86_64 based VM
	if [ "$osbit" == "x86_64" ]; then
        {
              kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
              msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
        }
	elif [ "$osbit" == "i686" ]; then
        {
              kmodrpm=`ls kmod-microsoft-hyper-v-*.i686.rpm`
              msrpm=`ls microsoft-hyper-v-*.i686.rpm`
       	}
	fi
	

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
fi
