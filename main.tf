# Configure the Azure Provider
terraform {
  required_version = ">= 1.0"
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Local values for computed tags
locals {
  common_tags = merge({
    Environment = var.environment
    Project     = var.project
    ManagedBy   = "Terraform"
  }, var.additional_tags)
}

# Resource Group Module
module "resource_group" {
  source = "./modules/resource-group"

  name     = "${var.project}-${var.environment}-rg"
  location = var.location
  tags     = local.common_tags
}

# VNet Module
module "vnet" {
  source = "./modules/vnet"

  resource_group_name      = module.resource_group.name
  location                = module.resource_group.location
  vnet_name               = "${var.project}-${var.environment}-vnet"
  address_space           = var.vnet_address_space
  subnet_name             = "${var.project}-${var.environment}-subnet"
  subnet_address_prefixes = var.subnet_address_prefixes
  tags                    = local.common_tags
}
