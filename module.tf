resource azurerm_network_ddos_protection_plan network_ddos_protection_plan {
  name                = local.name
  location            = var.resource_group.location
  resource_group_name = var.resource_group.name
  tags                = var.tags
}