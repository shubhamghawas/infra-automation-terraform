terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.44.1"
    }
  }
  backend "azurerm" {
      resource_group_name  = "cie-infra-terraform"
      storage_account_name = "cieterraformstatefile"
      container_name       = "terraform-state-file"
      key                  = "terraform.tfstate"
  }

}

provider "azurerm" {
  features {}
}