linuxvm = {
  VM1 = {
    name                = "Frontend-VM"
    resource_group_name = "Todoapp-rg"
    location            = "Central India"
    admin_username      = "admin01"
    admin_password      = "admin@123456"
    network_interface_ids= ["/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Todoapp-rg/providers/Microsoft.Network/networkInterfaces/f-nic"]
  },
   VM2 = {
    name                = "Backend-VM"
    resource_group_name = "Todoapp-rg"
    location            = "Central India"
    admin_username      = "admin01"
    admin_password      = "admin@123456"
    network_interface_ids= ["/subscriptions/72ccfb48-6c6d-44eb-a988-faa9a1408781/resourceGroups/Todoapp-rg/providers/Microsoft.Network/networkInterfaces/B-nic"]
  }
}