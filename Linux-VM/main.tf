resource "azurerm_linux_virtual_machine" "Linux-Vm" {
  for_each                        = var.linuxvm
  name                            = each.value.name
  resource_group_name             = each.value.resource_group_name
  location                        = each.value.location
  size                            = "Standard_B1s"
  admin_username                  = each.value.admin_username
  admin_password                  = each.value.admin_password
  disable_password_authentication = false
  network_interface_ids           = each.value.network_interface_ids

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}
