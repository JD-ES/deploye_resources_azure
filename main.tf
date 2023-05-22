# ------------------- Global Resouce -------------------
data "azurerm_client_config" "tenant_id" {

}
# ------------------- Global Resouce -------------------

resource "azurerm_resource_group" "rg-app-prod-eastus-001" {
  name     = "rgappprodeastus001"
  location = "East US"
  tags     = var.tags
}

# ------------------- Networking Resouce -------------------

resource "azurerm_network_security_group" "sg-app-prod-eastus-001" {
  name                = "sgappprodeastus001"
  location            = azurerm_resource_group.rg-app-prod-eastus-001.location
  resource_group_name = azurerm_resource_group.rg-app-prod-eastus-001.name
}

resource "azurerm_virtual_network" "vnet-app-prod-eastus-001" {
  name                = "vnetappprodeastus001"
  location            = azurerm_resource_group.rg-app-prod-eastus-001.location
  resource_group_name = azurerm_resource_group.rg-app-prod-eastus-001.name
  address_space       = ["172.16.0.0/16"]
  tags                = var.tags
}
resource "azurerm_subnet" "sub-app-prod-eastus-001" {
  name                 = "subappprodeastus001"
  resource_group_name  = azurerm_resource_group.rg-app-prod-eastus-001.name
  virtual_network_name = azurerm_virtual_network.vnet-app-prod-eastus-001.name
  address_prefixes     = ["172.16.1.0/24"]
  service_endpoints    = ["Microsoft.Storage", "Microsoft.KeyVault"]

}

# ------------------- Security Resouce -------------------
resource "azurerm_key_vault" "kv-app-prod-eastus-001" {
  name                = "kvappprodeastus001"
  location            = azurerm_resource_group.rg-app-prod-eastus-001.location
  resource_group_name = azurerm_resource_group.rg-app-prod-eastus-001.name
  sku_name            = "standard"
  tenant_id           = data.azurerm_client_config.tenant_id.tenant_id
  tags                = var.tags
  network_acls {
    default_action             = "Deny"
    ip_rules                   = ["177.91.40.90"]
    virtual_network_subnet_ids = [azurerm_subnet.sub-app-prod-eastus-001.id]
    bypass                     = "None"
  }

}

# ------------------- Storage Resouce -------------------
resource "azurerm_storage_account" "stg-app-prod-eastus-001" {
  name                     = "stgappprodeastus001"
  resource_group_name      = azurerm_resource_group.rg-app-prod-eastus-001.name
  location                 = azurerm_resource_group.rg-app-prod-eastus-001.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags                     = var.tags
  network_rules {
    default_action             = "Deny"
    ip_rules                   = ["177.91.248.74"]
    virtual_network_subnet_ids = [azurerm_subnet.sub-app-prod-eastus-001.id]
  }

}
resource "azurerm_storage_container" "stg-ctn-app-prod-eastus-001" {
  name                  = "stgctnappprodeastus001"
  storage_account_name  = azurerm_storage_account.stg-app-prod-eastus-001.name
  container_access_type = "container"

}

