variable location {
  type        = string
  description = "The Azure location where the resources will be created"
  default     = "westeurope"
}

variable resource_group_name {
  type = string
  default = "cie-dev-resource-rg"
}

variable "vnet_name" {
  type = string
  default = "cie-dev-vnet"
}

variable "vnet_location" {
  type = string
  default = "westeurope"
}
variable "vnet_address_space" {
    type = list(string)
    default = ["10.0.0.0/16"]
}
variable "acr_name" {
  type = string
  default = "cie-dev-acr"
}