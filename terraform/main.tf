terraform {
  backend "azurerm" {
    # resource_group_name  = "2ops_service" 
    # storage_account_name = "2opsservicestorage "      
    # container_name       = "tfstates"           
    # key                  = "dev.terraform.tfstate" 
  }
}

provider "azurerm" {
  features {}
}