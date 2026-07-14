########################
# RESOURCE GROUP OUTPUTS
########################

output "network_rg_name" {
    description                               = "Name of the Resource Group for networking resources."
    value                                     = azurerm_resource_group.network.name
}

output "aks_rg_name" {
    description                               = "Name of the Resource Group for AKS resources."
    value                                     = azurerm_resource_group.aks.name
}

output "storage_rg_name" {
    description                               = "Name of the Resource Group for Storage resources."
    value                                     = azurerm_resource_group.storage.name
}

########################
# NETWORK MODULE OUTPUTS
########################

output "vnet_id" {
    description                               = "ID of the Virtual Network."
    value                                     = module.network.vnet_id
}

output "vnet_name" {
    description                               = "Name of the Virtual Network."
    value                                     = module.network.vnet_name
}

output "subnet_id" {
    description                               = "ID of the AKS subnet."
    value                                     = module.network.subnet_id
}

output "subnet_name" {
    description                               = "Name of the AKS subnet."
    value                                     = module.network.subnet_name
}

output "subnet_prefixes" {
    description                               = "Address prefixes of the AKS subnet."
    value                                     = module.network.subnet_prefixes
}


####################
# AKS MODULE OUTPUTS
####################

output "kubernetes_cluster_id" {
    description                               = "ID of the AKS cluster."
    value                                     = module.aks.kubernetes_cluster_id
}

output "kubernetes_cluster_name" {
    description                               = "Name of the AKS cluster."
    value                                     = module.aks.kubernetes_cluster_name
}

########################
# STORAGE MODULE OUTPUTS
########################

output "storage_account_id" {
    description                               = "ID of the Storage Account."
    value                                     = module.storage.storage_account_id
}

output "storage_account_name" {
    description                               = "Name og the Storage Account."
    value                                     = module.storage.storage_account_name
}

output "storage_container_id" {
    description                               = "ID of the Storage Container."
    value                                     = module.storage.container_id
}

output "storage_container_name" {
    description                               = "Name of the Storage Container."
    value                                     = module.storage.container_name
}