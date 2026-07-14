####################
# GLOBAL
####################

variable "location" {
    type           =  string
    description    = "Default Azure region for all resources."
}

#ΔΕΝ ΘΑ ΒΆΛΩ ΤΙΣ ΠΡΑΓΜΑΤΙΚΕΣ ΤΙΜΕΣ ΣΤΑ RESOURCE GROUPS("rg-prod-networking","rg-prod-aks","rg-prod-storage")
####################
# RESOURCE GROUPS
####################

variable "network_rg_name" {
    type           =  string
    description    = "Resource Group name for networking resources."
}

variable "aks_rg_name" {
    type           =   string
    description    =   "Resource Group name for AKS resources."
}

variable "storage_rg_name" {
    type           =   string
    description    =   "Resource Group name for Storage resources" 
}

#####################   #Αυτά τα ονόματα δεν αλλάζουν γιατί αυτά είναι λογικά ονόματα πόρων, όχι environment‑specific όπως ήταν στο RG από πάνω, 
                        #γι'αυτό πρέπει να τα αλλάζω στα RG.
# NETWORK MODULE
#####################

variable "vnet_name"  {
    type           =  string
    description    =  "Name of the Virtual Network."
}

variable "vnet_address_space" {
    type           =  list(string)
    description    =  "Address space for the Virtual Network."
}

variable "subnet_name" {
    type           =  string
    description    =  "Name of the AKS subnet."
}

variable "subnet_prefixes" {
    type           =  list(string)
    description    =  "Address prefixes for the AKS subnet."
}

######################
# AKS MODULE
######################

variable "kubernetes_cluster_name" {
    type          =  string
    description   =  "Name of the AKS cluster." 
}

variable "default_node_pool_name" {
    type          =  string
    description   =  "Name of the default_node_pool."
}

variable "identity_type" {
    type          =  string
    description   =  "Identity type for the AKS cluster."
}

variable "default_node_pool_vm_size" {
    type          = string
    description   = "VM size for the default AKS node pool."
}

variable "default_node_pool_node_count" {
    type          = number
    description   = "Node count for the default AKS node pool."
}

#######################
# STORAGE MODULE
#######################

variable "storage_account_name" {
    type          =  string
    description   =  "Name of the Storage Account."
}

variable "account_tier" {
    type          =  string
    description   =  "Performance tier of the Storage Account."
}

variable "account_replication_type" {
    type          =  string
    description   =  "Replication type for the Storage Account."
}

variable "environment" {
    type          =  string
    description   =  "Environment tag for the Storage Account."
    default       =  null #(επειδή είναι optional και τα optional έχουν πάντα default=null)
}

variable "container_name" {
    type          =  string
    description   =  "The name of the Storage Container to create."
    default       =  "logs"
}

