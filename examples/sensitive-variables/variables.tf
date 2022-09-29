variable "sensitive_variables" {
  type = list(object({
    key         = string
    value       = string
    category    = string
    description = string
    sensitive   = optional(bool)
  }))

  description = "List of Objects containing Variable definitions."

  default = [{
    key         = "HCP_CLIENT_ID"
    category    = "env"
    value       = "abc...890"
    description = "OAuth2 Client ID for API operations."
    sensitive   = true
    }, {
    key         = "HCP_CLIENT_SECRET"
    category    = "env"
    value       = "abc...890"
    description = "OAuth2 Client Secret for API operations."
    sensitive   = true
  }]
}


