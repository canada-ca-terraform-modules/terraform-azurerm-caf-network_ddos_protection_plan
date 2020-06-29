output "network_ddos_protection_plan" {
  description = "Returns the full set of network_ddos_protection_plan created"
  value = var.deploy ? azurerm_network_ddos_protection_plan.network_ddos_protection_plan[0] : null
}