provider "azurerm" {
  features {

  }
}

data "azurerm_resource_group" "example" {
  name     = var.rg_name
  #location = var.location
}

resource "azurerm_service_plan" "example" {
  name                = var.sp_name
  resource_group_name = data.azurerm_resource_group.example.name
  location            = data.azurerm_resource_group.example.location
  os_type             = var.os_type
  sku_name            = var.sku_name
}

resource "azurerm_linux_web_app" "example" {
  name                = var.wapp_name
  resource_group_name = data.azurerm_resource_group.example.name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}