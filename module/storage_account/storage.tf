variable "storage_account_name" {}
variable "resource_group_name" {}
  
variable "resource_group_location" {}

resource "azurerm_storage_account" "shiv"{
    name=var.storage_account_name
    resource_group_name = var.resource_group_name 
    location=var.resource_group_location 
    account_tier = "Standard"
    account_replication_type = "LRS"

  
}

output "storage_account_id" {
    value = azurerm_storage_account.shiv.id
  
}
