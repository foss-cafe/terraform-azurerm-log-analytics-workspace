resource "azurerm_log_analytics_workspace" "this" {
  count = var.create_log_analytics_workspace ? 1 : 0

  name                            = var.name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  allow_resource_only_permissions = var.allow_resource_only_permissions
  local_authentication_disabled   = var.local_authentication_disabled

  sku                                = var.sku
  retention_in_days                  = var.retention_in_days
  daily_quota_gb                     = var.daily_quota_gb
  cmk_for_query_forced               = var.cmk_for_query_forced
  internet_ingestion_enabled         = var.internet_ingestion_enabled
  internet_query_enabled             = var.internet_query_enabled
  reservation_capacity_in_gb_per_day = var.reservation_capacity_in_gb_per_day
  tags                               = var.tags
}

resource "azurerm_log_analytics_solution" "this" {
  count = var.create_log_analytics_workspace ? 1 : 0

  solution_name         = var.solution_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  workspace_resource_id = azurerm_log_analytics_workspace.this[0].id
  workspace_name        = azurerm_log_analytics_workspace.this[0].name


  dynamic "plan" {
    for_each = var.plan

    content {
      publisher      = try(plan.value.publisher)
      product        = try(plan.value.product)
      promotion_code = try(plan.value.promotion_code, null)
    }

  }
}
