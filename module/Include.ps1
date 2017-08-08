<#

Include file used by Publish.ps1 to generate required manifests when a new
version is published.

PowerNSX developers should update this file any time new functions are addeded
to PowerNSX

#>

#PowerNSX Version string.  The publish script will append a build number, so this should
#only be a Major.Minor
$ModuleVersion = "3.0"

$FunctionsToExport = @(
    'Add-XmlElement',
    'Format-Xml',
    'Invoke-NsxRestMethod',
    'Invoke-NsxWebRequest',
    'Connect-NsxServer',
    'Disconnect-NsxServer',
    'Get-PowerNsxVersion',
    'Get-NsxClusterStatus',
    'Invoke-NsxCli',
    'Wait-NsxJob',
    'Get-NsxCliDfwFilter',
    'Get-NsxCliDfwRule',
    'Get-NsxCliDfwAddrSet',
    'New-NsxManager',
    'Set-NsxManager',
    'New-NsxController',
    'Get-NsxController',
    'Remove-NsxController',
    'Wait-NsxControllerJob',
    'New-NsxIpPool',
    'Get-NsxIpPool',
    'Remove-NsxIpPool'
    'Get-NsxVdsContext',
    'New-NsxVdsContext',
    'Remove-NsxVdsContext',
    'New-NsxClusterVxlanConfig',
    'Install-NsxCluster',
    'Remove-NsxCluster',
    'Remove-NsxClusterVxlanConfig',
    'New-NsxSegmentIdRange',
    'Get-NsxSegmentIdRange',
    'Remove-NsxSegmentIdRange',
    'Get-NsxTransportZone',
    'New-NsxTransportZone',
    'Remove-NsxTransportZone',
    'Add-NsxTransportZoneMember',
    'Remove-NsxTransportZoneMember',
    'Get-NsxLogicalSwitch',
    'New-NsxLogicalSwitch',
    'Remove-NsxLogicalSwitch',
    'Get-NsxSpoofguardPolicy',
    'New-NsxSpoofguardPolicy',
    'Remove-NsxSpoofguardPolicy',
    'Publish-NsxSpoofguardPolicy',
    'Get-NsxSpoofguardNic',
    'Grant-NsxSpoofguardNicApproval',
    'Revoke-NsxSpoofguardNicApproval',
    'Get-NsxLogicalRouter',
    'New-NsxLogicalRouterInterfaceSpec',
    'New-NsxLogicalRouter',
    'Remove-NsxLogicalRouter',
    'Set-NsxLogicalRouterInterface',
    'New-NsxLogicalRouterInterface',
    'Remove-NsxLogicalRouterInterface',
    'Get-NsxLogicalRouterInterface',
    'New-NsxAddressSpec',
    'New-NsxEdgeInterfaceSpec',
    'New-NsxEdgeSubInterfaceSpec',
    'Set-NsxEdgeInterface',
    'Clear-NsxEdgeInterface',
    'Get-NsxEdgeInterface',
    'New-NsxEdgeSubInterface',
    'Remove-NsxEdgeSubInterface',
    'Get-NsxEdgeSubInterface',
    'Get-NsxEdgeInterfaceAddress',
    'Add-NsxEdgeInterfaceAddress',
    'Remove-NsxEdgeInterfaceAddress',
    'Get-NsxEdge',
    'New-NsxEdge',
    'Repair-NsxEdge',
    'Set-NsxEdge',
    'Remove-NsxEdge',
    'Enable-NsxEdgeSsh',
    'Disable-NsxEdgeSsh',
    'Set-NsxEdgeNat',
    'Get-NsxEdgeNat',
    'Get-NsxEdgeNatRule',
    'New-NsxEdgeNatRule',
    'Remove-NsxEdgeNatRule',
    'Set-NsxEdgeFirewall',
    'Get-NsxEdgeFirewall',
    'Get-NsxEdgeFirewallRule',
    'New-NsxEdgeFirewallRule',
    'Remove-NsxEdgeFirewallRule',
    'Get-NsxEdgeCsr',
    'New-NsxEdgeCsr',
    'Remove-NsxEdgeCrl',
    'Get-NsxEdgeCertificate',
    'New-NsxEdgeSelfSignedCertificate',
    'Remove-NsxEdgeCertificate',
    'Get-NsxSslVpn',
    'Set-NsxSslVpn',
    'New-NsxSslVpnAuthServer',
    'Get-NsxSslVpnAuthServer',
    'New-NsxSslVpnUser',
    'Get-NsxSslVpnUser',
    'Remove-NsxSslVpnUser',
    'New-NsxSslVpnIpPool',
    'Get-NsxSslVpnIpPool',
    'Remove-NsxSslVpnIpPool',
    'New-NsxSslVpnPrivateNetwork',
    'Get-NsxSslVpnPrivateNetwork',
    'Remove-NsxSslVpnPrivateNetwork',
    'New-NsxSslVpnClientInstallationPackage',
    'Get-NsxSslVpnClientInstallationPackage',
    'Remove-NsxSslVpnClientInstallationPackage',
    'Set-NsxEdgeRouting',
    'Get-NsxEdgeRouting',
    'Get-NsxEdgeStaticRoute',
    'New-NsxEdgeStaticRoute',
    'Remove-NsxEdgeStaticRoute',
    'Get-NsxEdgePrefix',
    'New-NsxEdgePrefix',
    'Remove-NsxEdgePrefix',
    'Get-NsxEdgeBgp',
    'Set-NsxEdgeBgp',
    'Get-NsxEdgeBgpNeighbour',
    'New-NsxEdgeBgpNeighbour',
    'Remove-NsxEdgeBgpNeighbour',
    'Get-NsxEdgeOspf',
    'Set-NsxEdgeOspf',
    'Get-NsxEdgeOspfArea',
    'Remove-NsxEdgeOspfArea',
    'New-NsxEdgeOspfArea',
    'Get-NsxEdgeOspfInterface',
    'Remove-NsxEdgeOspfInterface',
    'New-NsxEdgeOspfInterface',
    'Get-NsxEdgeRedistributionRule',
    'Remove-NsxEdgeRedistributionRule',
    'New-NsxEdgeRedistributionRule',
    'Set-NsxLogicalRouterRouting',
    'Get-NsxLogicalRouterRouting',
    'Get-NsxLogicalRouterStaticRoute',
    'New-NsxLogicalRouterStaticRoute',
    'Remove-NsxLogicalRouterStaticRoute',
    'Get-NsxLogicalRouterPrefix',
    'New-NsxLogicalRouterPrefix',
    'Remove-NsxLogicalRouterPrefix',
    'Get-NsxLogicalRouterBgp',
    'Set-NsxLogicalRouterBgp',
    'Get-NsxLogicalRouterBgpNeighbour',
    'New-NsxLogicalRouterBgpNeighbour',
    'Remove-NsxLogicalRouterBgpNeighbour',
    'Get-NsxLogicalRouterOspf',
    'Set-NsxLogicalRouterOspf',
    'Get-NsxLogicalRouterOspfArea',
    'Remove-NsxLogicalRouterOspfArea',
    'New-NsxLogicalRouterOspfArea',
    'Get-NsxLogicalRouterOspfInterface',
    'Remove-NsxLogicalRouterOspfInterface',
    'New-NsxLogicalRouterOspfInterface',
    'Get-NsxLogicalRouterRedistributionRule',
    'Remove-NsxLogicalRouterRedistributionRule',
    'New-NsxLogicalRouterRedistributionRule',
    'Get-NsxSecurityGroup',
    'New-NsxSecurityGroup',
    'Remove-NsxSecurityGroup',
    'Add-NsxSecurityGroupMember',
    'Remove-NsxSecurityGroupMember',
    'New-NsxSecurityTag',
    'Get-NsxSecurityTag',
    'Remove-NsxSecurityTag',
    'Get-NsxSecurityTagAssignment',
    'New-NsxSecurityTagAssignment',
    'Remove-NsxSecurityTagAssignment',
    'Get-NsxIpSet',
    'New-NsxIpSet',
    'Remove-NsxIpSet',
    'Get-NsxMacSet',
    'New-NsxMacSet',
    'Remove-NsxMacSet',
    'Get-NsxService',
    'New-NsxService',
    'Remove-NsxService',
    'Get-NsxFirewallSection',
    'New-NsxFirewallSection',
    'Remove-NsxFirewallSection',
    'Get-NsxFirewallRule',
    'New-NsxFirewallRule',
    'Remove-NsxFirewallRule',
    'Get-NsxLoadBalancer',
    'Set-NsxLoadBalancer',
    'Get-NsxLoadBalancerMonitor',
    'New-NsxLoadBalancerMonitor',
    'Remove-NsxLoadBalancerMonitor',
    'Get-NsxLoadBalancerApplicationProfile',
    'New-NsxLoadBalancerApplicationProfile',
    'Remove-NsxLoadBalancerApplicationProfile',
    'New-NsxLoadBalancerMemberSpec',
    'New-NsxLoadBalancerPool',
    'Get-NsxLoadBalancerPool',
    'Remove-NsxLoadBalancerPool',
    'Get-NsxLoadBalancerPoolMember',
    'Add-NsxLoadBalancerPoolMember',
    'Remove-NsxLoadBalancerPoolMember',
    'Get-NsxLoadBalancerVip',
    'Add-NsxLoadBalancerVip',
    'Remove-NsxLoadBalancerVip',
    'Get-NsxSecurityPolicy',
    'Remove-NsxSecurityPolicy',
    'Get-NsxSecurityGroupEffectiveMember',
    'Find-NsxWhereVMUsed',
    'Get-NsxBackingPortGroup',
    'Get-NsxBackingDVSwitch',
    'Update-PowerNsx',
    'Get-NsxFirewallExclusionListMember',
    'Add-NsxFirewallExclusionListMember',
    'Remove-NsxFirewallExclusionListMember',
    'Get-NsxManagerSsoConfig',
    'Get-NsxManagerVcenterConfig',
    'Get-NsxManagerTimeSettings',
    'Set-NsxManagerTimeSettings',
    'Clear-NsxManagerTimeSettings',
    'Get-NsxManagerSyslogServer',
    'Get-NsxManagerNetwork',
    'Get-NsxManagerBackup',
    'Get-NsxManagerComponentSummary',
    'Get-NsxManagerSystemSummary',
    'Get-NsxManagerCertificate',
    'Get-NsxManagerRole',
    'Set-NsxManagerRole',
    'Invoke-NsxManagerSync',
    'Get-NsxManagerSyncStatus',
    'Add-NsxSecondaryManager',
    'Get-NsxSecondaryManager',
    'Remove-NsxSecondaryManager',
    'New-NsxServiceGroup',
    'Add-NsxServiceGroupMember',
    'Get-NsxServiceGroup',
    'Get-NsxServiceGroupMember',
    'Remove-NsxServiceGroup',
    'Get-NsxLoadBalancerStats',
    'Get-NsxFirewallSavedConfiguration',
    'New-NsxLoadBalancerApplicationRule',
    'Get-NsxLoadBalancerApplicationRule',
    'Copy-NsxEdge',
    'Export-NsxObject',
    'Import-NsxObject',
    'Connect-NsxLogicalSwitch',
    'Disconnect-NsxLogicalSwitch',
    'Add-NsxLicense',
    'Get-NsxLicense',
    'Get-NsxApplicableMember',
    'Get-NsxSecurityGroupMemberTypes',
    'Get-NsxSecurityGroupEffectiveVirtualMachine',
    'Get-NsxSecurityGroupEffectiveIpAddress',
    'Get-NsxSecurityGroupEffectiveMacAddress',
    'Get-NsxSecurityGroupEffectiveVnic',
    'Set-NsxFirewallThreshold',
    'Get-NsxFirewallThreshold',
    'Get-NsxFirewallGlobalConfiguration',
    'Set-NsxFirewallGlobalConfiguration',
    'Add-NsxIpSetMember',
    'Remove-NsxIpSetMember',
    'Get-NsxUserRole',
    'Invoke-XpathQuery',
    'Get-NsxFirewallRuleMember',
    'Add-NsxFirewallRuleMember',
    'Remove-NsxFirewallRuleMember',
    'Wait-NsxGenericJob',
    'Remove-NsxController'
)