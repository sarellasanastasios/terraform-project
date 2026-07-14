output "storage_account_id" {
    description                 = "The ID of the Storage Account."
    value                       = azurerm_storage_account.storage.id
}

output "storage_account_name" {
    description                 = "The name of the Storage Account."
    value                       = azurerm_storage_account.storage.name
}

output "container_name" {
    description                 = "The name of the created Storage Container."
    value                       = azurerm_storage_container.logs.name
}

output "container_id" {
    description                 = "The ID of the created Storage Container."
    value                       = azurerm_storage_container.logs.id
}