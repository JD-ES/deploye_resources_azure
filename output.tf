output "storage_url" {
  description = "Bring the storage account url"
  value       = azurerm_storage_account.stg-app-prod-eastus-001.primary_web_endpoint
}

output "resource_group_name" {
  description = "Bring the resource group name"
  value       = azurerm_resource_group.rg-app-prod-eastus-001.name
}
output "vnet_space" {
  description = "Bring the virtual network address space"
  value       = azurerm_virtual_network.vnet-app-prod-eastus-001.address_space
}

output "subnet_space" {
  description = "Bring the subnet address prefixes"
  value       = azurerm_subnet.sub-app-prod-eastus-001.address_prefixes
}

output "keyVault_url" {
  description = "Bring the key vault uri"
  value       = azurerm_key_vault.kv-app-prod-eastus-001.vault_uri
}
