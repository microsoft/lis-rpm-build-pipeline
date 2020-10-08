# spec file for package msft-rdma-drivers
#
# Copyright (c) 2015 SUSE LINUX GmbH, Nuernberg, Germany.
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.

%define release %(date +%Y%m%d)

Name:           msft-rdma-drivers
Version:        0.0.0.0
Release:        %{release}
Summary:        RDMA Driver collection for Azure HPC
License:        GPL-2.0
Group:          System/Kernel
Source:         msft-rdma-drivers-0.0.0.0.tar.gz
BuildRoot:      %{_tmppath}/%{name}-build
Requires:       WALinuxAgent >= 2.2.2

%description
A collection of Microsoft Linux Integration Services packages
with hv_network_direct RDMA. The fabric needs to have a version matched
driver in the guest. This package provides the known version and at runtime
a script injected into the instace installs the proper version of the driver.

%prep
%setup -q

%build

%install
mkdir -p %{buildroot}/opt/microsoft/rdma
cp -r * %{buildroot}/opt/microsoft/rdma


%pre

%files
%defattr(-,root,root,-)
%dir /opt/microsoft
%dir /opt/microsoft/rdma
/opt/microsoft/rdma/*

