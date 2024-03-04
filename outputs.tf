output "vnet_id_out" {
  description = "The id of the resource group"
  value       = azurerm_resource_group.vnet.id
}

output "vnet_name_out" {
  description = "The id of the resource group"
  value       = azurerm_resource_group.vnet.name
}

output "vnet_location_out" {
  description = "The id of the resource group"
  value       = azurerm_resource_group.vnet.location
}
