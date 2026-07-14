# Αντικαθιστώ με var.<NAME> τιμές

provider "azurerm" {
    features {}
}

resource "azurerm_resource_group" "network" {
    name                          = var.network_rg_name
    location                      = var.location
}

resource "azurerm_resource_group" "aks" {
    name                          = var.aks_rg_name
    location                      = var.location
}

resource "azurerm_resource_group" "storage" {
    name                          = var.storage_rg_name
    location                      = var.location               
}

module "network" {
    source = "../modules/network"


    resource_group_name           = var.network_rg_name
    location                      = var.location

    vnet_name                     = var.vnet_name
    vnet_address_space            = var.vnet_address_space

    subnet_name                   = var.subnet_name
    subnet_prefixes               = var.subnet_prefixes

}

module "aks" {
    source = "../modules/aks"

    resource_group_name           = var.aks_rg_name
    location                      = var.location
    dns_prefix                    = var.kubernetes_cluster_name

    kubernetes_cluster_name       = var.kubernetes_cluster_name
    

    default_node_pool_name        = var.default_node_pool_name
    default_node_pool_vm_size     = var.default_node_pool_vm_size
    default_node_pool_node_count  = var.default_node_pool_node_count
    identity_type                 = var.identity_type

    subnet_id                     = module.network.subnet_id
}


module "storage" {
    source = "../modules/storage"

    resource_group_name           = var.storage_rg_name
    location                      = var.location

    storage_account_name          = var.storage_account_name
    account_tier                  = var.account_tier
    account_replication_type      = var.account_replication_type
    environment                   = var.environment
    #Nέο - παιρνάω το container_name στο module
    container_name                = var.container_name    
}
