terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "2Ops_test"
    workspaces {
      prefix = "2Ops_"
    }
  }
}


provider "azurerm" {
  features {}
}

