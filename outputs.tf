
output "RgName" {
  value = azurerm_resource_group.Terra_RG.name
}

output "Location" {
  value = azurerm_resource_group.Terra_RG.location
}

output "RgId" {
  value = azurerm_resource_group.Terra_RG.id
}

output "VaultName" {
  value = azurerm_recovery_services_vault.Terra_Vault.name
}

output "VaultSku" {
  value = azurerm_recovery_services_vault.Terra_Vault.sku
}