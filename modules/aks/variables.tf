variable "resource_group_name" {
    type                     = string
    description              = "The Azure region for the Resource Group." 
}

variable "location" {
    type                     = string
    description              = "The Azure region for the Resource Group."
}

variable "kubernetes_cluster_name" {
    type                     = string
    description              = "The name of the Kubernetes (AKS) cluster." 
}

variable "default_node_pool_name" {
    type                     = string
    description              = "The name of the default node pool for the AKS cluster."
}

variable "default_node_pool_vm_size" {
    type                     = string
    description              = "VM size for the default node pool."
}

variable "default_node_pool_node_count" {
    type                     = number
    description              = "Node count for the default node pool."
}

variable "identity_type" {
    type                     = string
    description              = "The identity type for the AKS cluster."
}

#Πρέπει να περάσω το subnet_id που δημιούργησα στο modules/network σαν variable στο modules/aks,To AKS χρειάζεται subnet για να δημ/θεί με Azure 

variable "subnet_id" {
    type                     = string
    description              = "Subnet ID for AKS node pool."
}

variable "dns_prefix" {
    type                     = string
    description              = "DNS prefix for the AKS cluster."
}

