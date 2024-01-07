nic = {
  nic1 = {
    name                 = "f-nic"
    location             = "Central India"
    resource_group_name  = "Todoapp-rg"
    subnet_id            = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Todoapp-rg/providers/Microsoft.Network/virtualNetworks/Todo-vnet/subnets/Frontend"
    public_ip_address_id = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Todoapp-rg/providers/Microsoft.Network/publicIPAddresses/Todo-PIP"
  }
  # nic2 = {
  #   name                 = "B-nic"
  #   location             = "Central India"
  #   resource_group_name  = "Todoapp-rg"
  #   subnet_id            = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Todoapp-rg/providers/Microsoft.Network/virtualNetworks/Todo-vnet/subnets/Backend"
  #   public_ip_address_id = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Todoapp-rg/providers/Microsoft.Network/publicIPAddresses/TodoB-PIP"
  # }
}
