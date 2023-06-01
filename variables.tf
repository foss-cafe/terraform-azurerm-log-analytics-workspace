variable "create_log_analytics_workspace" {
  type        = bool
  description = "Do you want to create Log analytics workspace"
  default     = true
}

variable "name" {
  type        = string
  description = "(Required) Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  type        = string
  description = "(Required) The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created."
}

variable "allow_resource_only_permissions" {
  type        = bool
  description = "(Optional) Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to true."
  default     = true
}

variable "local_authentication_disabled" {
  type        = bool
  description = "(Optional) Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to false."
  default     = false
}

variable "sku" {
  type        = string
  description = "(Optional) Specifies the SKU of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new SKU as of 2018-04-03). Defaults to PerGB2018."
  default     = "PerGB2018"
}

variable "retention_in_days" {
  type        = number
  description = "(Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730."
  default     = 30
}

variable "daily_quota_gb" {
  type        = string
  description = "(Optional) The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted."
  default     = "-1"
}

variable "cmk_for_query_forced" {
  type        = bool
  description = "Optional) Is Customer Managed Storage mandatory for query management?"
  default     = false
}

variable "internet_ingestion_enabled" {
  type        = bool
  description = "(Optional) Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to true."
  default     = true
}

variable "internet_query_enabled" {
  type        = bool
  description = "(Optional) Should the Log Analytics Workspace support querying over the Public Internet? Defaults to true."
  default     = true
}

variable "reservation_capacity_in_gb_per_day" {
  type        = number
  description = "(Optional) The capacity reservation level in GB for this workspace. Must be in increments of 100 between 100 and 5000."
  default     = null
}

variable "tags" {
  type        = map(string)
  description = "(Optional) A mapping of tags to assign to the resource."
  default     = {}
}

variable "solution_name" {
  type        = string
  description = "(Optional) Specifies the name of the solution to be deployed. See here for options.Changing this forces a new resource to be created."
  default     = "ContainerInsights"
}

variable "plan" {
  type        = any
  description = "(Optional) A plan block"
  default = [
    {
      publisher = "Microsoft"
      product   = "OMSGallery/ContainerInsights"
    }
  ]
}

