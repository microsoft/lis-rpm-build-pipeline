param (
    $ResourceGroupName="",
    $secretsFile="",
    $arch=""
)

Function Register-AzureSubscription($secretsFile) {
    $XmlSecrets = [xml](Get-Content $secretsFile)
    $ClientID = $XmlSecrets.secrets.SubscriptionServicePrincipalClientID
    $TenantID = $XmlSecrets.secrets.SubscriptionServicePrincipalTenantID
    $Key = $XmlSecrets.secrets.SubscriptionServicePrincipalKey
    $AzureContextFilePath = $XmlSecrets.secrets.AzureContextFilePath
    $subIDSplitted = ($XmlSecrets.secrets.SubscriptionID).Split("-")
    $subIDMasked = "$($subIDSplitted[0])-xxxx-xxxx-xxxx-$($subIDSplitted[4])"
    Write-Host "------------------------------------------------------------------"
    if ($ClientID -and $Key) {
        Write-Host "Authenticating Azure PS session using Service Principal..."
        $pass = ConvertTo-SecureString $key -AsPlainText -Force
        $mycred = New-Object System.Management.Automation.PSCredential ($ClientID, $pass)
        $null = Add-AzureRmAccount -ServicePrincipal -Tenant $TenantID -Credential $mycred
    }
}

Register-AzureSubscription $secretsFile

$PbuildFile = '#
# Configuration file for pbuild.  This file is normally stored in ~/.pbuild,
# but can be customized with environment variable "PBUILD" (full path).
#
# Default log file location
# With no customization, you get:  "~/"  (expanded to your home directory)
#
# You can customize with lines like the following:
# logdir_prior: ~/pbuild_logs/prior
#
# If specified, logdir_prior forms a logfile directory that log files are
# moved to prior to pbuild starting up.  This allows you to save one level
# of prior log files from pbuild.
#
# Be certain to create the logfile directory prior to running pbuild

#
# Default selector to build if unspecified on command line.
#
# NOTE: This line must appear before all host entries to be handled properly!
#
# You can customize with a line like the following:
# select: om

select: om

#
# Systems to exclude in the build:
# With no customization, you get:  ""
#
# You can customize with a line like the following:
# exclude: sun_5.8_sparc,suse_9_32

#
# Settings that may be customized:
# With no cusomization, you get:
#   "CheckValidity,Debug,DeleteLogfiles,NoDiagnoseErrors,NoLogfileRename,NoLogfileSelect,Progress,SummaryScreen"
#
# You can customize with a line like the following:
#
# settings: LogfileRename

#
# Per-project configuration options:
#   Keyword:Project:value
#
# Valid keywords:  make_target, configure_options
# configure_options : nip : --dev

#
# Test settings that may be customized:
# Attributes are controlled with "test_attributes",
# Test names are controlled with "test_names".
#
# With no customization, you get all tests (no restrictions)
#
# You can customize with a line like the following:
#
# test_attributes: -slow
# test_names: atomic,condition

#
# This rest of the file contains lines with three pieces of information per
# line (space separated):
#   Optional: "Host:" constant to specify that this is a host entry
#   Key (name for referring to the entry)
#   Host name (DNS name or IP address)
#   Directory path on host
#   Project (must specify selector to specify project)
#      Project must be one of:
#         om (for Operations Manager),
#         oms (for Operatations Management Suite), or
#         a host of others (see documentation)
#   Optional: Select specification (to match with command line and/or default)
#      If a select entry is specified, you MUST specify a selector to build with
#      This is useful if you build multiple projects. If you only build one
#      project, then you need not specify the select specification.

# Lis 4.0 branch build rpm

#host:   centos70x64            192.168.222.97      ~/rpmbuild/SOURCES       om
#host:   centos70x64_UPDATE1    192.168.222.116     ~/rpmbuild/SOURCES       om
#host:   centos71x64            192.168.222.6       ~/rpmbuild/SOURCES       om
'

$RH5PbuildFile = $PbuildFile
$RH6PbuildFile = $PbuildFile
$RH7PbuildFile = $PbuildFile
$RH5VMCount = 1
$RH6VMCount = 1
$RH7VMCount = 1
$Counter = 0
$NICs = Get-AzureRmNetworkInterface -ResourceGroupName $ResourceGroupName
$IPS = $null
foreach ($nic in $NICs) {
    if($nic.Name -inotmatch $arch) {
        continue
    }

    $counter ++
    if($nic.Name.Split("_")[3].StartsWith("5")) {
        $RH5PbuildFile += "host:`tCentOS5.xVM$RH5VMCount`t$($nic.IpConfigurations.PrivateIpAddress)`t~/rpmbuild/SOURCES`tom`n"
        $IPS +=  $nic.VirtualMachine.Id.Split('/')[-1] + "=`"" + $nic.IpConfigurations.PrivateIpAddress + "`"`n"
        Write-Host "$Counter.`t$($nic.IpConfigurations.PrivateIpAddress) >> .\RH5.pbuild"
        $RH5VMCount += 1
    } elseif ($nic.Name.Split("_")[3].StartsWith("6")) {
        $RH6PbuildFile += "host:`tCentOS6.xVM$RH6VMCount`t$($nic.IpConfigurations.PrivateIpAddress)`t~/rpmbuild/SOURCES`tom`n"
        $IPS +=  $nic.VirtualMachine.Id.Split('/')[-1] + "=`"" + $nic.IpConfigurations.PrivateIpAddress + "`"`n"
        Write-Host "$Counter.`t$($nic.IpConfigurations.PrivateIpAddress) >> .\RH6.pbuild"
        $RH6VMCount += 1
    } elseif ($nic.Name.Split("_")[3].StartsWith("7")) {
        $RH7PbuildFile += "host:`tCentOS7.xVM$RH7VMCount`t$($nic.IpConfigurations.PrivateIpAddress)`t~/rpmbuild/SOURCES`tom`n"
        $IPS +=  $nic.VirtualMachine.Id.Split('/')[-1] + "=`""+ $nic.IpConfigurations.PrivateIpAddress + "`"`n"
        Write-Host "$Counter.`t$($nic.IpConfigurations.PrivateIpAddress) >> .\RH7.pbuild"
        $RH7VMCount += 1
    } elseif ($nic.Name -imatch "controller") {
        Write-Host "Skipped $($nic.Name)."
    } else {
        Write-Host "InValid hostname $($nic.Name)."
    }
}

Set-Content -Value $RH5PbuildFile -Path .\RH5.pbuild -Force -Verbose
Set-Content -Value $RH6PbuildFile -Path .\RH6.pbuild -Force -Verbose
Set-Content -Value $RH7PbuildFile -Path .\RH7.pbuild -Force -Verbose
Set-Content -Value $IPS -Path .\ips.sh -Force -Verbose
