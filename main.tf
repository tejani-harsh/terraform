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