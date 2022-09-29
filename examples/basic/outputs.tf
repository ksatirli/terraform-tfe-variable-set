output "tfe_variable_set" {
  description = "Exported Attributes for `tfe_variable_set`."
  value       = module.hcp_credentials.tfe_variable_set.main
}

output "tfe_workspace_variable_set" {
  description = "Exported Attributes for `tfe_workspace_variable_set`."
  value       = module.hcp_credentials.tfe_workspace_variable_set.main
}

output "tfe_variable" {
  description = "Exported Attributes for `tfe_variable`."
  value       = module.hcp_credentials.tfe_variable.main
}
