<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| variables | List of Objects containing Variable definitions. | <pre>list(object({<br>    key         = string<br>    value       = string<br>    category    = string<br>    description = string<br>    sensitive   = bool<br>  }))</pre> | <pre>[<br>  {<br>    "category": "env",<br>    "description": "OAuth2 Client ID for API operations.",<br>    "key": "HCP_CLIENT_ID",<br>    "sensitive": true,<br>    "value": "abc...890"<br>  },<br>  {<br>    "category": "env",<br>    "description": "OAuth2 Client Secret for API operations.",<br>    "key": "HCP_CLIENT_SECRET",<br>    "sensitive": true,<br>    "value": "abc...890"<br>  }<br>]</pre> | no |

### Outputs

No outputs.
<!-- END_TF_DOCS -->