# Resource Group Module Outputs
output "resource_group" {
  description = "Resource group details"
  value = {
    name = module.resource_group.name
    id   = module.resource_group.id
  }
}

# VNet Module Outputs
output "vnet_details" {
  description = "Virtual Network details"
  value = {
    name          = module.vnet.vnet_name
    id            = module.vnet.vnet_id
    address_space = module.vnet.vnet_address_space
  }
}

output "subnet_details" {
  description = "Subnet details"
  value = {
    name = module.vnet.subnet_name
    id   = module.vnet.subnet_id
  }
}
