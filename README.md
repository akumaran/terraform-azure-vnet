# Azure Virtual Network Module

### Description
This module is for deploying `virtual network` resource in Azure using Terraform

### Inputs
|Variable Name|Type|Required| Default |Description|
|:------|:------|:-----|:-----|:-----|
| vnet_name | `string` | `true` | | virtual network Name
| vnet_location | `string` | `true` | `eastus` | virtual network Location
| vnet_rg_name | `string` | `true` |  | name of the resource group virtual network
| vnet_address_space | `list(string)` | `false` | `["10.0.0.0/16"]` | address space that is used the virtual network
| vnet_dns_servers | `list(string)` | `false` | `[]` | address space that is used the virtual network
| vnet_bgp_community | `string` | `false` | `null` | BGP community attribute in format <as-number>:<community-value>
| vnet_tags | `map(any)` | `false` | {} | virtual network Tags


### Outputs
|Name | Description |
|:------|:-----|
| vnet_id_out | The id of the newly created vNet
| vnet_guid | The GUID of the newly created vNet
| vnet_name_out | The Name of the newly created vNet
| vnet_location_out | The location of the newly created vNet