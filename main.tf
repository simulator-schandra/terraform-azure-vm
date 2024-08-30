module "vm" {
  source = "./module"
  vm_name = "simulator-vm"
  vm_location = "South India"
  rg_name = "simulator-rg"
  subnet_id = "/subscriptions/d13e065d-de62-4283-8742-8aa75745e71d/resourceGroups/simulator-rg/providers/Microsoft.Network/virtualNetworks/simulator-vnet/subnets/simulator-sub-pub-1"
  vm_size = "Standard_B1s" 
  vm_priority = "Regular"
  admin_username = "adminuser"
  admin_username_pub_key = "~/.ssh/suyash.pub"
  os_disk_caching = "ReadWrite"
  os_disk_size_gb = "30"
  os_disk_storage_account_type = "Standard_LRS"
  source_image_offer = "0001-com-ubuntu-server-jammy"
  source_image_publisher = "Canonical"
  source_image_sku = "22_04-lts"
  source_image_version = "latest"
  tags = {
    "Environment" = "Staging"
  }
}
