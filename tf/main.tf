

provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "example" {
  name     = "append-sample"
}

resource "azurerm_redis_cache" "alice" {
  name                = "alice-cache"
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
  capacity            = 2
  family              = "C"
  sku_name            = "Standard"
  enable_non_ssl_port = false
  minimum_tls_version = "1.2"

  public_network_access_enabled = true

  redis_configuration {
  }
}
