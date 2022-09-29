data "tfe_workspace" "main" {
  name         = "a-demo-workspace"
  organization = "a-demo-organization"
}

module "variables" {
  source = "../.."

  name         = "variables"
  description  = "Variables Example."
  organization = data.tfe_workspace.main.organization

  workspace_ids = [
    data.tfe_workspace.main.id
  ]

  variables = var.variables
}
