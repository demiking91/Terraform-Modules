resource "azurerm_lb" "lb" {
  name                = "FrontendLoadBalancer"
  location            = "Central India"
  resource_group_name = "Todoapp-rg"
  sku                 = "Standard"
  sku_tier            = "Regional"

  frontend_ip_configuration {
    name                 = "PublicIPAddress"
    public_ip_address_id = azurerm_public_ip.pip.id
  }
}

resource "azurerm_public_ip" "pip" {
  name                = "acceptanceTestPublicIp1"
  resource_group_name = "Todoapp-rg"
  location            = "Central India"
  allocation_method   = "Static"
  sku                 = "Standard"

}

resource "azurerm_lb_backend_address_pool" "pool" {
  loadbalancer_id = azurerm_lb.lb.id
  name            = "BackEndAddressPool"
}


resource "azurerm_network_interface_backend_address_pool_association" "pool_asso" {
  network_interface_id    = "/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Todoapp-rg/providers/Microsoft.Network/networkInterfaces/NIC-lb"
  ip_configuration_name   = "Ipv4config"
  backend_address_pool_id = azurerm_lb_backend_address_pool.pool.id
}

resource "azurerm_lb_rule" "lb_rule" {
  loadbalancer_id                = azurerm_lb.lb.id
  name                           = "LBRule"
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  frontend_ip_configuration_name = "PublicIPAddress"
  probe_id                       = azurerm_lb_probe.probe.id
}

resource "azurerm_lb_probe" "probe" {
  loadbalancer_id     = azurerm_lb.lb.id
  name                = "Frontend-probe"
  port                = 80
  interval_in_seconds = "5"

}
