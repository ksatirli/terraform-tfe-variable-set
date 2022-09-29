# Example: `sensitive-variables`

This is a _sensitive-variables_ example of the `terraform-tfe-variable-set` module.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| sensitive_variables | List of Objects containing Variable definitions. | <pre>list(object({<br>    key         = string<br>    value       = string<br>    category    = string<br>    description = string<br>    sensitive   = optional(bool)<br>  }))</pre> | <pre>[<br>  {<br>    "category": "env",<br>    "description": "OAuth2 Client ID for API operations.",<br>    "key": "HCP_CLIENT_ID",<br>    "sensitive": true,<br>    "value": "abc...890"<br>  },<br>  {<br>    "category": "env",<br>    "description": "OAuth2 Client Secret for API operations.",<br>    "key": "HCP_CLIENT_SECRET",<br>    "sensitive": true,<br>    "value": "abc...890"<br>  }<br>]</pre> | no |

### Outputs

| Name | Description |
|------|-------------|
| tfe_variable | Exported Attributes for `tfe_variable`. |
| tfe_variable_set | Exported Attributes for `tfe_variable_set`. |
| tfe_workspace_variable_set | Exported Attributes for `tfe_workspace_variable_set`. |
<!-- END_TF_DOCS -->
