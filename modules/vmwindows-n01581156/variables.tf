variable "rg_name" {}
variable "location" {}
variable "storage_account_name" {}
variable "windows_vm_name" {}


variable "windows_avs" {
  type    = string
  default = "windows_avs_set"
}

variable "subnet_id" {
  type = string
}

variable "windows_OS_disk" {
  type        = map(string)
  description = "Attributes for Window machine OS disk"
  default = {
    storage_account_type = "StandardSSD_LRS"
    Disk_size            = "128"
    caching              = "ReadWrite"
  }
}
variable "windows_OS" {
  type        = map(string)
  description = "Windows OS information"
  default = {
    Publisher = "MicrosoftWindowsServer"
    Offer     = "WindowsServer"
    Sku       = "2016-Datacenter"
    Version   = "latest"
  }
}



locals {
  assignment01_tags = {
    Project        = "CCGC 5502 Automation Assignement"
    Name           = "Harsh Tejani"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}

variable "windows_username" {
  type        = string
  description = "The admin username for linux virtual machine"
  default     = "harsh-n01581156"
}
variable "windows_password" {
  type        = string
  description = "The password for windows virtual machine"
  default     = "WindowsP@ssw0rd"
}
