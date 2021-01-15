# Resource Group Module
Simple module to create a Resource Group

## Usage Example :

```hcl
module "RSV-test" {
  source = "git::ssh://git@ssh.dev.azure.com/v3/Covage-dsi-infra/iac-terraform-modules/TerraRecoveryServiceVaultWithRG"
    RgName = "RG-test_Nate-Fr"
    VaultSku = "Standard"
    VaultName = "RSV-VmBackup-${var.Env}-Fr"
    EnvironmentTag = var.Env
    EnvironmentUsageTag = "${var.Env} VM Backup"
    ProvisioningDateTag = timestamp()
  }
```
