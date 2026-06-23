terraform {
required_providers {
azurerm = {
source = "hashicorp/azurerm"
version = "4.78.0"
}
}
}
provider "azurerm" {
features {}
subscription_id = "2b3920e9-30f7-44c4-9a49-07db5fc6bcae"
}
