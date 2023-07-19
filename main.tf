terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "=3.0.1"
    }
  }
}

# 2. Configure the AzureRM Provider
provider "azurerm" {
  features {}
  subscription_id = "11e07d93-b7de-44c1-b006-7218b5fb3180"
  client_id       = "b30bfd9a-8e64-4c5a-ac79-c166d9ae713c"
  client_secret   = "mit8Q~qmWXTwifGCRrGggw0m97aJnXNLHwVdTaaZ"
  tenant_id       = "30bf9f37-d550-4878-9494-1041656caf27"
}

resource "azurerm_resource_group" "rg" {
    name = "terraform_rg"
    location = "East US"
  
}

resource "azurerm_virtual_network" "existing_vnet" {
    name = "terraformVNET"
    address_space = ["10.10.0.0/16"]
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
}

resource "azurerm_subnet" "existing_subnet" {
    name = "sub1"
    address_prefixes = ["10.10.1.0/24"]
    virtual_network_name = azurerm_virtual_network.existing_vnet.name
    resource_group_name = azurerm_resource_group.rg.name
  
}

resource "azurerm_subnet" "new_subnet" {
    name = "sub2"
    address_prefixes = ["10.10.2.0/24"]
    virtual_network_name = azurerm_virtual_network.existing_vnet.name
    resource_group_name = azurerm_resource_group.rg.name
  
}