//Defined User Variables
vsphere_datacenter      = "smt-lab-dc01"
vsphere_password        = "VMware123!"
vsphere_compute_cluster = "smt-lab-cl-mn-01"
vsphere_portgroup_name  = "smt-lab-vDS_build_20"
vsphere_datastore       = "smt-lab-ds-vsan-01"
template_library_Name   = "win-2019-std-gui"
vm_name                 = "windows-2019-std-gui"
CPUs                    = "2"
RAM                     = "2048"
disk_size               = "61440"
firmware                = "efi"
vm_version              = "17"
notes                   = "Built via Packer with user defined variables"
guest_os_type           = "windows2019srv_64Guest"
ip_wait_timeout         = "1h"
communicator            = "winrm"
winrm_user              = "administrator"
winrm_password          = "VMware123!"
winrm_timeout           = "30m"
disk_controller_type    = ["pvscsi"]
os_iso_path             = "[smt-lab-ds-vsan-01] /Media/windows_server_2019_jan_2021.iso"
vmtools_iso_path        = "[smt-lab-ds-vsan-01] /Media/VMTools/windows.iso"
boot_wait               = "7s"
boot_command            = ["<spacebar>"]
config_files            = ["config/autounattend.xml","scripts/pvscsi","scripts/install-vm-tools.cmd","scripts/enable-winrm.ps1"]
script_files            = ["scripts/enable-rdp.cmd", "scripts/disable-tls.ps1"]