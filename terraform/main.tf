# terraform {
#   backend "remote" {
#     hostname     = "app.terraform.io"
#     organization = "2Ops_test"

#     workspaces {
#       name = "2Ops_qa"
#     }
#   }
# }

terraform { 
  cloud { 
    
    organization = "2Ops_test" 

    # workspaces { 
    #   name = "2Ops_dev" 
    # } 
  } 
}


provider "azurerm" {
  features {}
}

