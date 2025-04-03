Resource Group ID: 
Storage account blob service primary endpoint: sa_blob_endpoint
Virtual network ID: vnet_id

output "rg_id" {
  value = azurerm_resource_group.this.id
  description = "resource group id"
}

output "sa_blob_endpoint" {
  
  description = "sa_blob_endpoint"
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
  description = "vnet ID"
}