resource "azurerm_resource_group" "rg1" {
name = "rg-dev"
location = "central india"
}
resource "azurerm_resource_group" "rg2" {
name = "rg-prod"
location = "central india"
}
resource "azurerm_virtual_network" "vnet1" {
  name                = "dev-vnet"
  resource_group_name = azurerm_resource_group.rg1.name
  location            = azurerm_resource_group.rg1.location
  address_space       = ["10.0.0.0/16"]
}
resource "azurerm_virtual_network" "vnet2" {
  name                = "prod-vnet"
  resource_group_name = azurerm_resource_group.rg2.name
  location            = azurerm_resource_group.rg2.location
  address_space       = ["10.0.1.0/16"]
}
