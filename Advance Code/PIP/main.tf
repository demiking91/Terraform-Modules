resource "azurerm_public_ip" "PIP" {
  for_each            = var.pip
  name                = each.value.name
  resource_group_name = data.azurerm_resource_group.data_rg.name
  location            = each.value.location
  allocation_method   = "Static"
  sku = "Standard"
}
