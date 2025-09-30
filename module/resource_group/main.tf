variable "resource_group_name" {}
  
variable "resource_group_location" {}
  


resource "azurerm_resource_group" "shiv" {
    name=var.resource_group_name 
    location = var.resource_group_location 
  
}
output "name51" {
  value = azurerm_resource_group.shiv.name
}

output "location51" {
  value = azurerm_resource_group.shiv.location
}