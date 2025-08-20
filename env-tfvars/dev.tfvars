environment = "dev"
project     = "ADO"
location    = "East US"

vnet_address_space      = ["10.0.0.0/16"]
subnet_address_prefixes = ["10.0.1.0/24"]

additional_tags = {
  CostCenter = "Engineering"
  Owner      = "DevOps Team"
}
