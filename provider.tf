terraform {
  required_version = "1.4.6"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
  /*
  backend "azurerm" {
    resource_group_name  = "rgappprodeastus001"
    storage_account_name = "stgappprodeastus001"
    container_name       = "stgctnappprodeastus001"
    key                  = "resources.tfstate"
  }*/
}

provider "azurerm" {
  features {

  }
}
