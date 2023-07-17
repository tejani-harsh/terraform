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

output "linux-vm-private-ip" {
  value = module.vmlinux.linux-vm-private-ip
}
output "linux-vm-public-ip" {
  value = module.vmlinux.linux-vm-public-ip
}
output "linux_virtual_machine" {
  value = module.vmlinux.linux_virtual_machine
}
output "linux-vm-hostname" {
  value = module.vmlinux.linux-vm-hostname
}
output "linux-vm-fqdn" {
  value = module.vmlinux.liunx-vm-FQDN
}

output "windows_vm_name" {
  value = module.vmwindows.windows_vm_name
}
output "windows_vm_id" {
  value = module.vmwindows.windows_vm_id
}

output "windows_vm_dns_labels" {
  value = module.vmwindows.windows_vm_dns_label
}

output "windows_vm_private_ip_address" {
  value = module.vmwindows.windows_vm_private_ip_address
}

output "windows_vm_public_ip_address" {
  value = module.vmwindows.windows_vm_public_ip_address
}
output "load_balancer_name" {
  value=module.loadbalancer.load_balancer_name
}