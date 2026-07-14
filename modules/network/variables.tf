variable "resource_group_name" {
    type                      = string
    description               = "Name of the resource group for networking resources."
}

variable "location" {
    type                      = string
    description               = "Azure region for all networking resources."
    default                   = "westeurope"
}

variable "vnet_name" {
    type                      = string
    description               = "Name of the Virtual Network."
}

variable "vnet_address_space" {
    type                      = list(string)
    description               = "Address space for the virtual network."
}

variable "subnet_name" {
    type                      = string
    description               = "Name of the subnet."
}

variable "subnet_prefixes" {
    type                      = list(string)
    description               = "Address prefixes for the subnet."
}

