output "kubernetes_cluster_id" {
    description              = "The ID of the Kubernetes (AKS) cluster."
    value                    = azurerm_kubernetes_cluster.aks.id
}

output "kubernetes_cluster_name" {
    description              = "The name of the Kubernetes (AKS) cluster."
    value                    = azurerm_kubernetes_cluster.aks.name
}

#Το AKS δημιουργεί αυτόματα ένα node resource group

output "node_resource_group" {
    description              = "The auto-generated node resource group for the AKS cluster."
    value                    = azurerm_kubernetes_cluster.aks.node_resource_group
}



#Το FQDN είναι χρήσιμο για debugging και API access

output "kubernetes_cluster_fqdn" {
    description              = "The FQDN of the AKS cluster."
    value                    = azurerm_kubernetes_cluster.aks.fqdn
}

