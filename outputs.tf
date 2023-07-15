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

output "log_analytics_workspace_name" {
  value = module.common.log_analytics_workspace_name.name
}
output "recovery_vault_name" {
  value = module.common.recovery_vault_name.name
}
output "storage_account_name" {
  value = module.common.storage_account_name.name
}
