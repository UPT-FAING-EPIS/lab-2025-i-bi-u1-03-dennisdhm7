provider "azurerm" {
  features {}

  subscription_id = "715ad6a0-5b95-442f-b928-60cffbfb75c6"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-powerbi-demo"
  location = "westus"
}

resource "azurerm_mssql_server" "sqlserver" {
  name                         = "sqlserverpowerbidemoxyz"
  resource_group_name          = azurerm_resource_group.rg.name
  location                     = azurerm_resource_group.rg.location
  version                      = "12.0"
  administrator_login          = "adminuser"
  administrator_login_password = "Upt2025@"
  minimum_tls_version          = "1.2"
  public_network_access_enabled = true
}

resource "azurerm_mssql_database" "sqldb" {
  name                = "AdventureWorksLT"
  server_id           = azurerm_mssql_server.sqlserver.id
  collation           = "SQL_Latin1_General_CP1_CI_AS"
  sku_name            = "Basic"
}
