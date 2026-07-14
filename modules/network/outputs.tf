output "vnet_id" {
    description       = "ID of the virtual network"
    value             = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
    description       = "Name of the virtual network"
    value             = azurerm_virtual_network.vnet.name
}

output "subnet_id" {
    description       = "ID of the AKS subnet"
    value             = azurerm_subnet.aks.id
}

output "subnet_name" {
    description       = "Name of the AKS subnet"
    value             = azurerm_subnet.aks.name
}

output "subnet_prefixes" {
    description       = "Address prefixes of the AKS subnet"
    value             = azurerm_subnet.aks.address_prefixes
}