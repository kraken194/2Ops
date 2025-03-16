terraform {
  backend "azurerm" {
    # resource_group_name  = "2ops_service" 
    # storage_account_name = "2opsservicestorage "      
    # container_name       = "tfstates"           
    # key                  = "dev.terraform.tfstate" 
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = false
    }
  }
  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

module "azure_storage_account" {
  count        = var.environment == "dev" ? 1 : 0
  source       = "./modules/storage_account"
  location     = var.location
  environment  = var.environment
  project_name = var.project_name
}


module "azure_key_vault" {
  count        = var.environment == "qa" ? 1 : 0
  source       = "./modules/key_vault"
  location     = var.location
  environment  = var.environment
  project_name = var.project_name
  tenant_id    = var.tenant_id
}
