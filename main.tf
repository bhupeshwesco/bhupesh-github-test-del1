terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }

  }
  required_version = ">= 1.1.0"

  cloud {
    organization = "WESCO-test-delete"

    workspaces {
      name = "gh-actions-demo-delete"
    }
  }
}



# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "delete-github-example-resources"
  location = "West US"
}
