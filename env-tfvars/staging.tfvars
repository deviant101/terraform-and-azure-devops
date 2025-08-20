environment = "staging"
project     = "ADO"
location    = "Central US"

vnet_address_space      = ["10.1.0.0/16"]
subnet_address_prefixes = ["10.1.1.0/24"]

additional_tags = {
  CostCenter = "Engineering"
  Owner      = "DevOps Team"
}
