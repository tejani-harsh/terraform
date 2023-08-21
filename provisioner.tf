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
resource "null_resource" "ansible" {
  provisioner "local-exec" {
    command = "ansible-playbook ansible-part.yml "
  }
  depends_on = [
    module.rgroup,
    module.datadisk,
    module.vmlinux
  ]
}