# Deploys an Azure Network DDOS Protection

Creates an Azure Network DDOS Protection plan.

Reference the module to a specific version (recommended):

```hcl
module Project_ddos_protection_plan {
  source            = "github.com/canada-ca-terraform-modules/terraform-azurerm-caf-network_ddos_protection_plan?ref=v1.0.0"
  env               = var.env
  userDefinedString = "${var.group}_${var.project}"
  resource_group    = local.resource_groups_L1.Network
  tags              = var.tags
}
```

## Inputs

| Name              | Type   | Default | Description                                                                                                       |
| ----------------- | ------ | ------- | ----------------------------------------------------------------------------------------------------------------- |
| resource_group    | object | None    | (Required) Resource group object where to create the resource. Changing this forces a new resource to be created. |
| tags              | map    | None    | (Required) Map of tags for the deployment.                                                                        |
| max_length        | string | None    | (Optional) maximum length to the name of the resource.                                                            |
| env               | string | None    | (Required) You can use a prefix to add to the list of resource groups you want to create                          |
| userDefinedString | string | None    | (Required) UserDefinedString part of the name of the resource                                                     |

## Output

| Name                         | Type   | Description                                                          |
| ---------------------------- | ------ | -------------------------------------------------------------------- |
| network_ddos_protection_plan | object | Returns the full object of the created network_ddos_protection_plan. |
