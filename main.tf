resource "azurerm_resource_group" "dummyrg" {
  name= "dummyrg"
  location = "Centralindia"
}

resource "azurerm_storage_account" "dummystorage" {
  depends_on = [ azurerm_resource_group.dummyrg ]
  resource_group_name = "dummyrg"
  name = "dummystoragegit"
  location = "Centralindia"
  account_tier = "Standard"
  account_replication_type = "LRS"
}


