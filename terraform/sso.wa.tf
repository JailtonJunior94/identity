resource "azurerm_app_service" "wa_identity_sso" {
  name                = "wa-identity-sso"
  location            = azurerm_resource_group.identity_rg.location
  resource_group_name = azurerm_resource_group.identity_rg.name
  app_service_plan_id = azurerm_app_service_plan.identity_sp.id
  https_only          = true

  site_config {
    linux_fx_version = "DOCKER|jailtonjunior/identity-sso:v2"
    always_on        = "true"
  }
}
