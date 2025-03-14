terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "2Ops_test"
    workspaces {
      name = "2Ops_qa"
    }
  }
}


provider "azurerm" {
  features {}
}

