resource "azurerm_bastion_host" "bastion_block" {
  for_each            = var.bastion
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Vnet-rg/providers/Microsoft.Network/virtualNetworks/Ashish-vnet/subnets/AzureBastionSubnet"
    public_ip_address_id = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Vnet-rg/providers/Microsoft.Network/publicIPAddresses/BastionPIP"
  }
}