provider "azurerm" {
  version = "2.34.0"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
  resource_group_name = "myResourceGroup"

  subnet {
    name            = "subnet-1"
    address_prefixes = ["10.0.1.0/24"]
  }

  subnet {
    name            = "subnet-2"
    address_prefixes = ["10.0.2.0/24"]
  }
}
