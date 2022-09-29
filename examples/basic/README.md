# Example: `basic`

This is a _basic_ example of the `terraform-tfe-variable-set` module.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| variables | List of Objects containing Variable definitions. | <pre>list(object({<br>    key         = string<br>    value       = string<br>    category    = string<br>    description = string<br>  }))</pre> | <pre>[<br>  {<br>    "category": "env",<br>    "description": "Region to lifecycle resources in.",<br>    "key": "CLOUD_REGION",<br>    "value": "eu-netherlands-ams"<br>  }<br>]</pre> | no |

### Outputs

| Name | Description |
|------|-------------|
| tfe_variable | Exported Attributes for `tfe_variable`. |
| tfe_variable_set | Exported Attributes for `tfe_variable_set`. |
| tfe_workspace_variable_set | Exported Attributes for `tfe_workspace_variable_set`. |
<!-- END_TF_DOCS -->
