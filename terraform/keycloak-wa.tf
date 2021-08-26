resource "azurerm_app_service" "keycloak_wa" {
  name                = "keycloak-wa"
  location            = azurerm_resource_group.identity_rg.location
  resource_group_name = azurerm_resource_group.identity_rg.name
  app_service_plan_id = azurerm_app_service_plan.keycloak_sp.id
  https_only          = true

  site_config {
    linux_fx_version = "DOCKER|quay.io/keycloak/keycloak:15.0.2"
    always_on        = "true"
  }

  app_settings = {
    "KEYCLOAK_USER"            = "admin"
    "KEYCLOAK_PASSWORD"        = "admin"
    "WEBSITES_PORT"            = 8080
    "PROXY_ADDRESS_FORWARDING" = true
  }
}
