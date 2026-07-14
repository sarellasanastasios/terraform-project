variable "resource_group_name" {
    type                                     = string
    description                              = "The name of the Resource Group where the Storage Account will be created."
}

variable "location" {
    type                                     = string
    description                              = "The Azure region for the Resource Group."
}

variable "storage_account_name" {
    type                                     = string
    description                              = "The name of the Storage Account."
}

variable "account_tier" {
    type                                     = string
    description                              = "The performance tier of the Storage Account (Standard or Premium)."
}

variable "account_replication_type" {
    type                                     = string
    description                              = "The replication type for the Storage Account (e.g., LRS,GRS,ZRS)."
}

variable "environment" {
    type                                     = string
    description                              = "Environment tag for the Storage Account (e.g., dev,test,prod)."
    default                                  = null
}

variable "container_name" {
    type                                     = string
    description                              = "The name of the Storage Container to create."
    default                                  = "logs"
}



