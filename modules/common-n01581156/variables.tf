
variable "rg_name" {}
variable "rg_location" {}
variable "recovery_services_vault" {
  type = map(string)
  default = {
    recovery_vault_name = "backup-vault"
    recovery_sku        = "Standard"
  }
}

variable "storage_account_tier" {
  default = "Standard"
}

variable "storage_account_name" {
  default = "ccgc5502storageaccount"
}

variable "analytics_workspace_name" {
  default = "analyticsworkspace"
}

locals {
  assignment01_tags = {
    Project        = "CCGC 5502 Automation Assignement"
    Name           = "Harsh Tejani"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}
variable "subnet_id" {}
