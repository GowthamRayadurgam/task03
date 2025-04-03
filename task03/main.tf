data "azurerm_resource_group" "existing" {
  name = var.resource_group_name
}

resource "azurerm_resource_group" "this" {
  name     = data.azurerm_resource_group.existing.name
  location = data.azurerm_resource_group.existing.location

  tags = {
    Creator = var.tag
  }
}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetname
  location            = var.location
  address_space       = var.address_space
  resource_group_name = var.resource_group_name
  tags = {
    Creator = var.tag
  }
  depends_on = [azurerm_resource_group.this]
}

resource "azurerm_subnet" "subnet1" {
  name                 = var.subnet1name
  virtual_network_name = var.vnetname
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.address_prefix_1
  depends_on           = [azurerm_virtual_network.vnet]
}


resource "azurerm_subnet" "subnet2" {
  name                 = var.subnet2name
  virtual_network_name = var.vnetname
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.address_prefix_2
  depends_on           = [azurerm_virtual_network.vnet]
}

resource "azurerm_storage_account" "stacc" {
  name                     = var.staccname
  resource_group_name      = azurerm_resource_group.this.name
  location                 = azurerm_resource_group.this.location
  account_tier             = var.acctier
  account_replication_type = var.accreplication
  depends_on               = [azurerm_resource_group.this]

  tags = {
    Creator = var.tag
  }
}
