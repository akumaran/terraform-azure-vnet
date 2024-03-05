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

   validation {
    condition     = can([for ip in var.vnet_address_space : cidrsubnet(ip, 0, 0)])
    error_message = "Values must be a valid IP range in CIDR format."
  }
}

variable "vnet_dns_servers" {
  type        = list(string)
  default     = []
  description = "(Optional) List of IP addresses of DNS servers."

  validation {
    condition     = can([for ip in var.vnet_dns_servers : cidrnetmask("${ip}/32")])
    error_message = "DNS Server values must be a valid IP address."
  }
}

variable "vnet_bgp_community" {
  type        = string
  default     = null
  description = "(Optional) The BGP community attribute in format `<as-number>:<community-value>`."

  validation {
    condition     = var.vnet_bgp_community == null ? true : length(split(":", var.vnet_bgp_community)) == 2
    error_message = "The value must be a BGP community range in <as-number>:<community-value> format."
  }

  validation {
    condition     = var.vnet_bgp_community == null ? true : split(":", var.vnet_bgp_community)[0] == "12076"
    error_message = "The as-number must be 12076."
  }

  validation {
    condition     = var.vnet_bgp_community == null ? true : split(":", var.vnet_bgp_community)[1] >= 20000 && split(":", var.bgp_community)[1] <= 49999
    error_message = "The community-value must between 20000 and 49999."
  }
}

variable "vnet_tags" {
  type        = map(any)
  description = "(Optional) A mapping of tags to assign to the virtual network."
  default     = {}
}