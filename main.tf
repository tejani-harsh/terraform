module "rgroup" {
  source      = "./modules/rgroup-n01581156"
  rg-name     = "n01581156-rg"
  rg-location = "Canada Central"
}

module "network" {
  source      = "./modules/network-n01581156"
  rg-name     = module.rgroup.rg-network-name.name
  rg-location = module.rgroup.rg-network-location.location
  depends_on = [
    module.rgroup
  ]
}

module "common" {
  source      = "./modules/common-n01581156"
  rg_name     = module.rgroup.rg-network-name.name
  rg_location = module.rgroup.rg-network-location.location
  subnet_id   = module.network.azurerm_subnet_name
  depends_on = [
    module.rgroup
  ]
}


module "vmlinux" {
  source        = "./modules/vmlinux-n01581156"
  nb_count      = 3
  linux_vm_name = "linux-vmn01581156-"
  rg_name       = module.rgroup.rg-network-name.name
  location      = module.rgroup.rg-network-location.location
  subnet_id     = module.network.azurerm_subnet_name.id
  depends_on = [
    module.rgroup,
    module.network,
    module.common
  ]
  storage_account_name = module.common.storage_account_name.name
  storage_account_key  = module.common.storage_account_name
  storage_act          = module.common.storage_account_name

}

module "vmwindows" {
  source               = "./modules/vmwindows-n01581156"
  windows_vm_name      = "win-n01581156"
  rg_name              = module.rgroup.rg-network-name.name
  location             = module.rgroup.rg-network-location.location
  subnet_id            = module.network.azurerm_subnet_name.id
  depends_on           = [module.common, module.network, module.rgroup]
  storage_account_name = module.common.storage_account_name
}

module "datadisk" {
  source        = "./modules/datadisk-n01581156"
  linux-vm-ids  = module.vmlinux.linux-vm-ids
  windows_vm_id = module.vmwindows.windows_vm_id
  location      = module.rgroup.rg-network-location.location
  rg_name       = module.rgroup.rg-network-name.name
  depends_on    = [module.rgroup, module.vmwindows, module.vmlinux]
}

module "loadbalancer" {
  source        = "./modules/loadbalancer-n01581156"
  rg_name       = module.rgroup.rg-network-name.name
  location      = module.rgroup.rg-network-location.location
  vm_public_ip  = module.vmlinux.linux-vm-public-ip
  linux-nic-id  = module.vmlinux.nic_id[0]
  nb_count      = "3"
  linux_vm_name = module.vmlinux.linux-vm-hostname
  subnet_id     = module.network.azurerm_subnet_name
  depends_on = [
    module.rgroup,
    module.vmlinux,
  ]
  assignment01_tags = local.assignment01_tags
}

locals {
  assignment01_tags = {
    Project        = "CCGC 5502 Automation Assignement"
    Name           = "Harsh Tejani"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}