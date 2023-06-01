# Terraform module for Azure Log Analytics Workspace

## How to use it as a module

```hcl

```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_log_analytics_solution.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_solution) | resource |
| [azurerm_log_analytics_workspace.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allow_resource_only_permissions"></a> [allow\_resource\_only\_permissions](#input\_allow\_resource\_only\_permissions) | (Optional) Specifies if the log Analytics Workspace allow users accessing to data associated with resources they have permission to view, without permission to workspace. Defaults to true. | `bool` | `true` | no |
| <a name="input_cmk_for_query_forced"></a> [cmk\_for\_query\_forced](#input\_cmk\_for\_query\_forced) | Optional) Is Customer Managed Storage mandatory for query management? | `bool` | `false` | no |
| <a name="input_create_log_analytics_workspace"></a> [create\_log\_analytics\_workspace](#input\_create\_log\_analytics\_workspace) | Do you want to create Log analytics workspace | `bool` | `true` | no |
| <a name="input_daily_quota_gb"></a> [daily\_quota\_gb](#input\_daily\_quota\_gb) | (Optional) The workspace daily quota for ingestion in GB. Defaults to -1 (unlimited) if omitted. | `string` | `"-1"` | no |
| <a name="input_internet_ingestion_enabled"></a> [internet\_ingestion\_enabled](#input\_internet\_ingestion\_enabled) | (Optional) Should the Log Analytics Workspace support ingestion over the Public Internet? Defaults to true. | `bool` | `true` | no |
| <a name="input_internet_query_enabled"></a> [internet\_query\_enabled](#input\_internet\_query\_enabled) | (Optional) Should the Log Analytics Workspace support querying over the Public Internet? Defaults to true. | `bool` | `true` | no |
| <a name="input_local_authentication_disabled"></a> [local\_authentication\_disabled](#input\_local\_authentication\_disabled) | (Optional) Specifies if the log Analytics workspace should enforce authentication using Azure AD. Defaults to false. | `bool` | `false` | no |
| <a name="input_location"></a> [location](#input\_location) | (Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | (Required) Specifies the name of the Log Analytics Workspace. Workspace name should include 4-63 letters, digits or '-'. The '-' shouldn't be the first or the last symbol. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_plan"></a> [plan](#input\_plan) | (Optional) A plan block | `any` | <pre>[<br>  {<br>    "product": "OMSGallery/ContainerInsights",<br>    "publisher": "Microsoft"<br>  }<br>]</pre> | no |
| <a name="input_reservation_capacity_in_gb_per_day"></a> [reservation\_capacity\_in\_gb\_per\_day](#input\_reservation\_capacity\_in\_gb\_per\_day) | (Optional) The capacity reservation level in GB for this workspace. Must be in increments of 100 between 100 and 5000. | `number` | `100` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required) The name of the resource group in which the Log Analytics workspace is created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_retention_in_days"></a> [retention\_in\_days](#input\_retention\_in\_days) | (Optional) The workspace data retention in days. Possible values are either 7 (Free Tier only) or range between 30 and 730. | `number` | `30` | no |
| <a name="input_sku"></a> [sku](#input\_sku) | (Optional) Specifies the SKU of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new SKU as of 2018-04-03). Defaults to PerGB2018. | `string` | `"PerGB2018"` | no |
| <a name="input_solution_name"></a> [solution\_name](#input\_solution\_name) | (Optional) Specifies the name of the solution to be deployed. See here for options.Changing this forces a new resource to be created. | `string` | `"ContainerInsights"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A mapping of tags to assign to the resource. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | The Log Analytics Workspace ID. |
| <a name="output_primary_shared_key"></a> [primary\_shared\_key](#output\_primary\_shared\_key) | The Primary shared key for the Log Analytics Workspace. |
| <a name="output_secondary_shared_key"></a> [secondary\_shared\_key](#output\_secondary\_shared\_key) | The Secondary shared key for the Log Analytics Workspace. |
| <a name="output_workspace_id"></a> [workspace\_id](#output\_workspace\_id) | The Workspace (or Customer) ID for the Log Analytics Workspace. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
