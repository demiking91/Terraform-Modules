resource "azurerm_network_security_group" "example" {
  name                = "Fnsg"
  location            = "Central India"
  resource_group_name = data.azurerm_resource_group.data_rg.name



  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}