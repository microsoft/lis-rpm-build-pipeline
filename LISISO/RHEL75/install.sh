################################################################################
#
# This script is to automate installation of Linux Integration Services for 
# Microsoft Hyper-V
#
################################################################################
i=0
function installKernel()
{
	i=$((i+1))
	regex=$1
	kernelver=`uname -r`
	if [[ "$kernelver" =~ $regex ]];
	then
        	cd "update${i}"
	        kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
        	msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
	        if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ];
		then
        		echo "Installing the Linux Integration Services for Microsoft Hyper-V..."
			rpm -ivh $kmodrpm $msrpm
		        kmodexit=$?
		        if [ "$kmodexit" != 0 ];
			then
		            echo "Microsoft-Hyper-V RPM installation failed, Exiting."
		            exit 1;
		        else
		            echo "Linux Integration Services for Hyper-V has been installed. Please reboot your system."
		            exit 0
		        fi
	        fi
	# Making sure both rpms are present
	elif [ "$kernelver" == "3.10.0-862.el7.x86_64" ]; 
	then
		kmodrpm=`ls kmod-microsoft-hyper-v-*.x86_64.rpm`
	        msrpm=`ls microsoft-hyper-v-*.x86_64.rpm`
		if [ "$kmodrpm" != "" ] && [ "$msrpm" != ""  ];
		then
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
	fi
} # End function

installKernel "3.10.0-862.2.3"
installKernel "3.10.0-862.3.2"
installKernel "3.10.0-862.3.3"
installKernel "3.10.0-862.6.3"
installKernel "3.10.0-862.9.1"
installKernel "3.10.0-862.11.6"
installKernel "3.10.0-862.14.4"
	        
echo "Kernel version not supported, Exiting."
exit 1
