################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################

# Determine kernel architecture version 
i=0
function upgradeKernel()
{
	i=$((i+1))
	regex =$1
	kernelver=`uname -r`
	if [[ "$kernelver" =~ $regex ]];
	then
	        cd "update${i}"
	        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
	        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
	        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
        		 echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
		         rpm -Uvh $kmodrpm $msrpm
		         kmodexit=$?
		         if [ "$kmodexit" != 0 ]; then
		            echo "Microsoft-Hyper-V RPM installation failed, Exiting."
		            exit 1;
		         else
		            echo " Linux Integration Services for Hyper-V has been installed. Please reboot your system."
		            exit 0
		         fi
	        fi
	elif [ "$kernelver" == "3.10.0-693.el7.x86_64" ] ;
	then
	        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
	        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
	        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ]; then
        		  echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
		          rpm -Uvh $kmodrpm $msrpm
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

upgradeKernel '3.10.0-693.2.2' 
upgradeKernel '3.10.0-693.5.2' 
upgradeKernel '3.10.0-693.11.1' 
upgradeKernel '3.10.0-693.11.6' 
upgradeKernel '3.10.0-693.17.1' 
upgradeKernel '3.10.0-693.21.1' 
upgradeKernel '3.10.0-693.25.2' 
upgradeKernel '3.10.0-693.25.4' 
upgradeKernel '3.10.0-693.25.7' 
upgradeKernel '3.10.0-693.43.1'

echo "Kernel version not supported, Exiting."
exit 1

