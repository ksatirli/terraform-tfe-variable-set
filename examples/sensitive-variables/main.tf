data "tfe_workspace" "main" {
  name         = "a-demo-workspace"
  organization = "a-demo-organization"
}

module "sensitive_variables" {
  source = "../.."

  name         = "sensitive-variables"
  description  = "Sensitive Variables Example."
  organization = data.tfe_workspace.main.organization

  workspace_ids = [
    data.tfe_workspace.main.id
  ]

  variables = var.sensitive_variables
}
