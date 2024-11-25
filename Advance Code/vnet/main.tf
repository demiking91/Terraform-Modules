resource "azurerm_virtual_network" "example" {
  name                = "vnet1"
  location            = data.azurerm_resource_group.data_rg.location
  resource_group_name = data.azurerm_resource_group.data_rg.name
  address_space       = ["10.0.0.0/16"]


  dynamic "subnet" {
    for_each = var.sub
    content {
      name           = subnet.value.name
      address_prefix = subnet.value.address_prefix
    }
  }







}

