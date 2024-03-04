variable "vnet_name" {
type        = string  
description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
}

variable "vnet_location" {
  type        = string
  default     = "eastus"
  description = "(Required) The location/region where the virtual network is created."
}

variable "vnet_rg_name" {
type        = string  
description = "(Required) The name of the resource group in which to create the virtual network."
}

variable "vnet_address_space" {
  type        = list(string)
  default     = ["10.0.0.0/16"]
  description = "(Required) The address space that is used the virtual network."
}

variable "vnet_dns_servers" {
  type        = list(string)
  default     = []
  description = "(Optional) List of IP addresses of DNS servers."
}

variable "vnet_bgp_community" {
  type        = string
  default     = null
  description = "(Optional) The BGP community attribute in format `<as-number>:<community-value>`."
}

variable "vnet_tags" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the virtual network."
  default     = {}
}