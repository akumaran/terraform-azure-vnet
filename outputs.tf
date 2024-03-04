output "vnet_id_out" {
  description = "The id of the resource group"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_guid" {
  description = "The GUID of the newly created vNet"
  value       = azurerm_virtual_network.vnet.guid
}

output "vnet_name_out" {
  description = "The id of the resource group"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_location_out" {
  description = "The id of the resource group"
  value       = azurerm_virtual_network.vnet.location
}
