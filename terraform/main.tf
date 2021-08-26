terraform {
  backend "azurerm" {
    resource_group_name  = "jj-rg"
    storage_account_name = "storagepartners"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscriptionid
}

resource "azurerm_resource_group" "identity_rg" {
  name     = "identity-rg"
  location = var.location
}
