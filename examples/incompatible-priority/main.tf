data "tfe_workspace" "main" {
  name         = "a-demo-workspace"
  organization = "a-demo-organization"
}

# This example deliberately sets both priority and workspace_ids,
# which triggers the module's precondition and causes terraform plan to fail.
module "variables" {
  source = "../.."

  name         = "incompatible-variables"
  description  = "Incompatible Example."
  organization = data.tfe_workspace.main.organization

  priority = true

  workspace_ids = [
    data.tfe_workspace.main.id
  ]

  variables = var.variables
}
