output "rg-network-name" {
  value = module.rgroup.rg-network-name.name
}

output "rg-network-location" {
  value = module.rgroup.rg-network-location.location
}

#network

output "virtual_network_name" {
  value = module.network.virtual_network_name.name
}
output "azurerm_subnet_name" {
  value = module.network.azurerm_subnet_name.name
}
