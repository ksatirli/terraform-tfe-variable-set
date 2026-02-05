output "tfe_variable_set" {
  description = "Exported Attributes for `tfe_variable_set`."
  value       = module.variables.tfe_variable_set
}

output "tfe_workspace_variable_set" {
  description = "Exported Attributes for `tfe_workspace_variable_set`."
  value       = module.variables.tfe_workspace_variable_set
}

output "tfe_variable" {
  description = "Exported Attributes for `tfe_variable`."
  sensitive   = true
  value       = module.variables.tfe_variable
}
