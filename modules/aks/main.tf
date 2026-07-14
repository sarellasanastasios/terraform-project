resource "azurerm_kubernetes_cluster" "aks" {
    name                             = var.kubernetes_cluster_name
    location                         = var.location
    resource_group_name              = var.resource_group_name
    dns_prefix                       = var.kubernetes_cluster_name
    

    default_node_pool {
        name                         = var.default_node_pool_name
        vm_size                      = var.default_node_pool_vm_size
        node_count                   = var.default_node_pool_node_count
        vnet_subnet_id               = var.subnet_id
    }

#Πρέπει να ενεργοποιήσω Azure CNI,αλλιώς το AKS δεν θα χρησιμοποιήσει το subnet   
    network_profile {
        network_plugin               = "azure"
        network_policy               = "azure"

        service_cidr                 = "10.2.0.0/16"
        dns_service_ip               = "10.2.0.10"
        
    }

    identity {
        type                         = var.identity_type
    }
}

