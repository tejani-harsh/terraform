
output "windows_vm_id" {
  value = azurerm_windows_virtual_machine.windows_vm.id
}


output "windows_vm_name" {

  value       = azurerm_windows_virtual_machine.windows_vm.name
}

output "windows_vm_dns_label" {

  value       = azurerm_public_ip.windows_vm_public_ip_name.domain_name_label
}

output "windows_vm_private_ip_address" {

  value       = azurerm_network_interface.windows_nic.private_ip_address
}

output "windows_vm_public_ip_address" {

  value       = azurerm_public_ip.windows_vm_public_ip_name.ip_address
}
