##########################
# Module for RG creation #
##########################


#Variable declaration for Module

variable "RgName" {
  type    = string
  default = "DefaultRG"
}


variable "RgLocation" {
  type    = string
  default = "westeurope"
}


variable "EnvironmentTag" {
  type    = string
  default = "Sandbox"
}

variable "UsageTag" {
  type = string
  default = "PoC usage only"
}

variable "OwnerTag" {
  type    = string
  default = "Nate"
}

variable "ProvisioningModeTag" {
  type    = string
  default = "Terraform"
}

#value is true or false
variable "SoftDeleteEnabled" {
  type    = string
  default =  true
}

#sku Standard or RS0
variable "VaultSku" {
  type    = string
  default = "standard"
}

variable "VaultName" {
  type    = string
}