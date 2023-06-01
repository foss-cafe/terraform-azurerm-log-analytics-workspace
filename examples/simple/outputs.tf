output "id" {
  description = "The Log Analytics Workspace ID."
  value       = try(azurerm_log_analytics_workspace.this[0].id, "")
}

output "primary_shared_key" {
  description = "The Primary shared key for the Log Analytics Workspace."
  value       = try(azurerm_log_analytics_workspace.this[0].primary_shared_key, "")
}

output "secondary_shared_key" {
  description = "The Secondary shared key for the Log Analytics Workspace."
  value       = try(azurerm_log_analytics_workspace.this[0].secondary_shared_key, "")
}

output "workspace_id" {
  description = " The Workspace (or Customer) ID for the Log Analytics Workspace."
  value       = try(azurerm_log_analytics_workspace.this[0].workspace_id, "")
}
