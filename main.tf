module "rgroup" {
  source      = "./modules/rgroup"
  rg-name     = "n01581156-rg"
  rg-location = "Canada Central"
}

module "network" {
  source      = "./modules/network"
  rg-name     = module.rgroup.rg-network-name.name
  rg-location = module.rgroup.rg-network-location.location
  depends_on = [
    module.rgroup
  ]
}