output "tfe_variable_set" {
  description = "Exported Attributes for `tfe_variable_set`."

  value = {
    description  = tfe_variable_set.main.description
    global       = tfe_variable_set.main.global
    id           = tfe_variable_set.main.id
    name         = tfe_variable_set.main.name
    organization = tfe_variable_set.main.organization
    priority     = tfe_variable_set.main.priority
  }
}

output "tfe_workspace_variable_set" {
  description = "Exported Attributes for `tfe_workspace_variable_set`."
  value       = tfe_workspace_variable_set.main
}

output "tfe_variable" {
  description = "Exported Attributes for `tfe_variable`."
  value       = tfe_variable.main
}
