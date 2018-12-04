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
	regex =$1
	kernelver=`uname -r`
	if [[ "$kernelver" =~ $regex ]]   ;
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
	elif [ "$kernelver" == "3.10.0-514.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.2.2.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.6.1.el7.x86_64" ] || [ "$kernelver" == "3.10.0-514.6.2.el7.x86_64" ] ;
	then
		modrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
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

installKernel '3.10.0-514.10+\.[0-9]+' 
installKernel '3.10.0-514.16.1' 
installKernel '3.10.0-514.21.1' 
installKernel '3.10.0-514.21.2' 
installKernel '3.10.0-514.26.1' 
installKernel '3.10.0-514.26.2' 
installKernel '3.10.0-514.28.1' 
installKernel '3.10.0-514.35.1' 
installKernel '3.10.0-514.36.5' 
installKernel '3.10.0-514.41.1' 
installKernel '3.10.0-514.44.1' 
installKernel '3.10.0-514.48.1' 
installKernel '3.10.0-514.48.3' 
installKernel '3.10.0-514.48.5' 
installKernel '3.10.0-514.53.1' 
installKernel '3.10.0-514.55.4' 
installKernel '3.10.0-514.58.1' 
installKernel '3.10.0-514.61.1'

echo "Kernel version not supported, Exiting."
exit 1

