environment = "prod"
project     = "ADO"
location    = "West US 2"

vnet_address_space      = ["10.2.0.0/16"]
subnet_address_prefixes = ["10.2.1.0/24"]

additional_tags = {
  CostCenter = "Production"
  Owner      = "Platform Team"
}
