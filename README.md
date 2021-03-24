# Resource Group Module
Simple module to create a Resource Group

## Usage Example :

```hcl
module "RSV-test" {
  source = "github.com/nfrappart/azTerraRecoveryServiceVaultWithRG?ref=v1.0.0"
    RgName = "RG-test_Nate-Fr"
    VaultSku = "Standard"
    VaultName = "RSV-VmBackup-${var.Env}-Fr"
    EnvironmentTag = var.Env
    UsageTag = "Demo" #Optional. Default value is "PoC Usage Only"
  }
```
