resource "azurerm_app_service_plan" "identity_sp" {
  name                = "identity-sp"
  location            = azurerm_resource_group.identity_rg.location
  resource_group_name = azurerm_resource_group.identity_rg.name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = "Standard"
    size = "S1"
  }
}
