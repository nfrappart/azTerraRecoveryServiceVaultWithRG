

#Creating a Resource Group
resource "azurerm_resource_group" "Terra_RG" {
  name     = var.RgName
  location = var.RgLocation

  tags = {
    Environment      = var.EnvironmentTag
    Usage            = var.EnvironmentUsageTag
    Owner            = var.OwnerTag
    ProvisioningDate = var.ProvisioningDateTag
    ProvisioningMode = var.ProvisioningModeTag
  }
  lifecycle {
    ignore_changes = [
      tags["ProvisioningDate"],
    ]
  }
}

#Creating a Vault
resource "azurerm_recovery_services_vault" "Terra_Vault" {
  name                = var.VaultName
  location            = azurerm_resource_group.Terra_RG.location
  resource_group_name = azurerm_resource_group.Terra_RG.name
  sku                 = var.VaultSku

  soft_delete_enabled = var.SoftDeleteEnabled

  tags = {
    Environment      = var.EnvironmentTag
    Usage            = var.EnvironmentUsageTag
    Owner            = var.OwnerTag
    ProvisioningDate = var.ProvisioningDateTag
    ProvisioningMode = var.ProvisioningModeTag
  }
  lifecycle {
    ignore_changes = [
      tags["ProvisioningDate"],
    ]
  }
}