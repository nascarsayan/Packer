//Defined User Variables
vm_name                 = "azurevmwarecloudtestwin2022core"
guest_os_type           = "windows9Server64Guest"
os_iso_path             = "[Shared 15TB-1] ISOs/windows_server_2022.iso"
vmtools_iso_path        = "[Shared 15TB-1] ISOs/vmtools-win.iso"
config_files            = ["config/win-2022-core/autounattend.xml","scripts/windows/initial-configuration.ps1"]
script_files            = ["scripts/windows/os-configuration.ps1"]
cleanup                 = ["scripts/windows/cleanup.ps1"]
// vsphere_datacenter = "DevAndAdHoc"
// vsphere_compute_esxi_host = "10.150.179.184"
vsphere_datacenter = "ArcVMwareCriticalInfra"
vsphere_compute_esxi_host = "10.150.176.100"
