resource "azurerm_resource_group" "default" {
  name     = "example-resources"
  location = "East US"
}

resource "azurerm_virtual_network" "default" {
  name                = "example-network"
  location            = "East US"
  resource_group_name = azurerm_resource_group.default.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.0.0/24"
  }
}
