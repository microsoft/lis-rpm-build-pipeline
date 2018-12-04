################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################

# Determine kernel architecture version 
i=0
function installKernel()
{
	i=$((i+1))
	kernelver=`uname -r`
	regex=$1
	if [[ "$kernelver" =~ $regex ]] ;
	then
		cd "update${i}"
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
	elif [ "$kernelver" == "3.10.0-693.el7.x86_64" ] ;
	then
        
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
	fi
}

installKernel '3.10.0-693.2.2' 
installKernel '3.10.0-693.5.2' 
installKernel '3.10.0-693.11.1' 
installKernel '3.10.0-693.11.6' 
installKernel '3.10.0-693.17.1' 
installKernel '3.10.0-693.21.1' 
installKernel '3.10.0-693.25.2' 
installKernel '3.10.0-693.25.4' 
installKernel '3.10.0-693.25.7' 
installKernel '3.10.0-693.43.1

echo "Kernel version not supported, Exiting."
exit 1
