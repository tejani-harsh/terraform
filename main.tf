terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }

}
provider "azurerm" {
  features {}
}

module "rgroup" {
  source      = "./modules/rgroup"
  rg-name     = "n01581156-rg"
  rg-location = "Canada Central"
}

