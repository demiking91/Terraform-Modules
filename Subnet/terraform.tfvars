subnet = {
  subnet1 = {
    name                 = "Frontend"
    resource_group_name  = "Todoapp-rg"
    virtual_network_name = "Todo-vnet"
    address_prefixes     = ["10.0.0.0/24"]
  },

  subnet2 = {
    name                 = "Backend"
    resource_group_name  = "Todoapp-rg"
    virtual_network_name = "Todo-vnet"
    address_prefixes     = ["10.0.1.0/24"]
  }
}
