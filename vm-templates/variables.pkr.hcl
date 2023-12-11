# ----------------------------------------------------------------------------
# Name:         variables.pkr.hcl
# Description:  Variable declaration including default values.
# Author:       Stephan McTighe
# Date:         12/11/2021
# ----------------------------------------------------------------------------

variable "build_repo"{
  type = string
  default = "packer"
  description = "Github Repo"
}
variable "vsphere_server" {
  type    = string
  default = "idclab-vcen8.fareast.corp.microsoft.com"
  description = "vCenter Server you are deploying your templates to"
}
variable "vsphere_user" {
  type      = string
  default = "arcvmware@vsphere.local"
  sensitive = true
  description = "User with permissions to create VM's and import to the content library"
}
variable "vsphere_password" {
  type      = string
  sensitive = true
  description = "Password for vSphere_User"
}
variable "insecure_connection" {
  type    = bool
  default = true
  description = "Requires the target vCenter Server to have a valid, trusted certificate"
}
variable "vsphere_folder" {
  type    = string
  default = "Templates"
  description = "Folder that the VM will temporarily be storaged in before upload to the content library"
}
variable "vsphere_datacenter" {
    type    = string
    default = "ArcVMwareCriticalInfra"
    description = "Target Datacenter for the deployment"
}
// variable "vsphere_compute_cluster" {
//     type    = string
//     default = "physical-cluster"
//     description = "Target Cluster for the deployment"
// }
variable "vsphere_compute_esxi_host" {
    type    = string
    default = "10.150.176.100"
    description = "Target Host for the deployment"
}
variable "vsphere_portgroup_name" {
    type    = string
    default = "VM Network"
    description = "Target Portgroup/network for the deployment (DHCP enabled with internet access for Windows patching)"
}
variable "vsphere_datastore" {
    type    = string
    default = "Shared 15TB-1"
    description = "Target Datacenter for the deployment"
}
variable "vm_name" {
  type = string
  description = "Name of the VM"
}
variable "CPUs" {
  type = string
  default = "2"
  description = "Amount of vCPU's that are to be allocated to the template"
}
variable "RAM" {
  type = string
  default = "4096"
  description = "Amount of memory to be allocated to the template"
}
variable "disk_size" {
  type = string
  default = "10240"
  description = "Size of the OS disk in MB"
}
variable "firmware" {
  type = string
  default = "efi"
  description = "Firmware for the template.  Windows OS's should use EFI"
}
variable "vm_version" {
  type = string
  default = "19"
  description = "VM Hardware Version.  Default should be the minimum common version for the versions of vSphere the template will be used"
}
variable "guest_os_type" {
  type = string
  description = "Version of the guest operating system.  This uses the VMware OS type codes"
}
variable "boot_order" {
  type    = string
  default = "disk,cdrom"
}
variable "remove_cdrom" {
  type    = bool
  default = true
  description = "Removed the CDROM drives from the template"
}
variable "communicator" {
  type = string
  default = "winrm"
  description = "WinRM or SSH depending on the OS you are connecting to"
}
variable "winrm_insecure" {
  type      = bool
  default = true
  description = "WinRM to check the certificate is valid or not"
}
variable "communicator_user" {
  type      = string
  sensitive = true
  default = "Administrator"
  description = "Windows user to continue configuration"
}
variable "communicator_password" {
  type      = string
  sensitive = true
  description = "Password for winrm_user"
}
variable "communicator_timeout" {
  type = string
  default = "30m"
  description = "Timeout value for how long Packer should wait for WinRM to become available once an IP has been assigned"
}
variable "disk_controller_type" {
    type    = list(string)
    default = ["pvscsi"]
    description = "VM disk controller type"
}
variable "disk_thin_provisioned" {
  type    = bool
  default = true
  description = "Disk type, Thin/Thick etc"
}
variable "network_card" {
  type    = string
  default = "vmxnet3"
  description = "Virtual NIC type"
}
variable "os_iso_path" {
  type    = string
  description = "Path to the OS ISO file including the datastore name"
}
variable "vmtools_iso_path" {
  type    = string
  description = "Path to the VMware Tools ISO file including the datastore name"
}
variable "http_directory" {
    type = string
    default = "config"
    description = "Directory for Boot Files"
    }
variable "http_file"{
    type = string
    default = "dummy_hhtp_file"
    description = "Boot File (Linux)"
}
variable "http_port_min"{
    type = number
    default = 8000
    description = "Minimum port number for webserver"
    }
variable "http_port_max"{
    type = number
    default = 8000
    description = "Maximum port number for webserver"
    }
variable "boot_wait" {
  type    = string
  default = "3s"
  description = "Delay in seconds for when Packer should begin sending the boot command key strokes"
}
variable "shutdown_timeout" {
  type    = string
  default = "30m"
  description = "Time in minutes Packer should wait for the virtual machine to shutdown"
}
variable "boot_command" {
  type    = list(string)
  default = ["<spacebar>"]
  description = "Boot command key strokes to be sent to the VM"
}
variable "config_files" {
  type    = list(string)
  description = "Specify all files and folders that need to be made available to the OS during install"
}
variable "script_files" {
  type    = list(string)
  description = "Specify all files and folders that need to be made available AFTER the OS install"
}
variable "cleanup" {
  type    = list(string)
  description = "Cleans up proxy configuration"
}