resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.vnet_location
  resource_group_name = var.vnet_rg_name
  address_space       = var.vnet_address_space
  dns_servers         = var.vnet_dns_servers
  bgp_community       = var.vnet_bgp_community
  tags                = var.vnet_tags
}