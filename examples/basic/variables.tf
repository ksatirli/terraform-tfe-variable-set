variable "variables" {
  type = list(object({
    key         = string
    value       = string
    category    = string
    description = string
  }))

  description = "List of Objects containing Variable definitions."

  default = [{
    key         = "CLOUD_REGION"
    category    = "env"
    value       = "eu-netherlands-ams"
    description = "Region to lifecycle resources in."
    }
  ]
}


