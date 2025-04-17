provider "azurerm" {
  features {}

  subscription_id = "715ad6a0-5b95-442f-b928-60cffbfb75c6"
}

# Solo se creará la base de datos usando el servidor SQL ya existente
resource "azurerm_mssql_database" "sqldb" {
  name                = "AdventureWorksLT"
  server_id           = "/subscriptions/715ad6a0-5b95-442f-b928-60cffbfb75c6/resourceGroups/rg-powerbi-demo/providers/Microsoft.Sql/servers/sqlserverpowerbidemoxyz"
  collation           = "SQL_Latin1_General_CP1_CI_AS"
  sku_name            = "Basic"
}
