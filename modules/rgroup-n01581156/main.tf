#Create Resource Group
resource "azurerm_resource_group" "rg-network" {
  name     = var.rg-name
  location = var.rg-location
  tags     = local.assignment01_tags
}