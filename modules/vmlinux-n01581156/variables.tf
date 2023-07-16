variable "linux_avs" {
  default = "linux_avs"
}
variable "nb_count" {}
variable "linux_vm_name" {}

variable "vm-size" {
  default = "standard_B1s"
}
variable "admin-username" {
  default = "harsh-n01581156"
}
variable "private_key" {
  default = "id_rsa"
}
variable "public_key" {
  default = "id_rsa.pub"
}
variable "os-disk-attr" {
  type = map(string)
  default = {
    storage-account-type = "Premium_LRS"
    disk-size            = "32"
    disk-caching         = "ReadWrite"
  }
}
variable "source_image_info" {
  type = map(string)
  default = {
    os-publisher = "OpenLogic"
    os-offer     = "CentOS"
    os-sku       = "8_2"
    os-version   = "latest"
  }
}

variable "subnet_id" {
  type = string
}
variable "rg_name" {}
variable "location" {}


locals {
  assignment01_tags = {
    Project        = "CCGC 5502 Automation Assignement"
    Name           = "Harsh Tejani"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}
variable "storage_account_name" {}
variable "storage_account_key" {}
variable "storage_act" {}

