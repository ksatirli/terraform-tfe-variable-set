variable "name" {
  type        = string
  description = "Name of the variable set."
}

variable "description" {
  type        = string
  description = "Description of the variable set."
}

variable "global" {
  type        = bool
  description = "Toggle to make Variable Set available to all Workspaces in the Organization. Conflicts with `var.workspace_ids`."
  default     = false
}

variable "organization" {
  type        = string
  description = "Name of the organization."
}

variable "workspace_ids" {
  type        = list(string)
  description = "List of Workspace IDs to add the Variable Set to."
  default     = []
}

variable "variables" {
  type = list(object({
    key         = string
    value       = string
    category    = string
    description = string
    sensitive   = optional(bool)
  }))

  description = "List of Objects containing Variable definitions."
}
