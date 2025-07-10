provider "azurerm" 
{
  features {}
}
variable "resoure_group_location" 
{
description = "Azure region"
type = string
default = "Central India"
}
resource "azurerm_resoure_group" "example"
  name = "my-resource-group"
  location = var.resource_group_location

  tags = 
  {
    environmet = "development"
    project = "demo"
  }
}
output "resource_group_name"
  value = azurerm_resource_group.example.name
  description = "name of resource group"
}
output "resource_group_location_output" 
{
  value = resource_group_location_output.example.location
  description = "location of resource group"
}

  
