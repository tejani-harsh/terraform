#log analytics workspace
resource "azurerm_log_analytics_workspace" "log_analytics_workspace" {
  name                = var.analytics_workspace_name
  location            = var.rg_location
  resource_group_name = var.rg_name
  sku                 = "PerGB2018"
  retention_in_days   = 30
  tags                = local.assignment01_tags
}

#one recovery services vault
resource "azurerm_recovery_services_vault" "recovery_vault" {
  name                = var.recovery_services_vault["recovery_vault_name"]
  location            = var.rg_location
  resource_group_name = var.rg_name
  sku                 = var.recovery_services_vault["recovery_sku"]
  soft_delete_enabled = true
}


# Storage Account Creation
resource "azurerm_storage_account" "storage_account_1" {
  name                     = var.storage_account_name
  location                 = var.rg_location
  resource_group_name      = var.rg_name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


