module "hcp_credentials" {
  source = "../.."

  name         = "hashicorp-cloud-platform"
  description  = "See https://cloud.hashicorp.com/docs/hcp/access-control/service-principals for more information."
  organization = "a-demo-organization"

  workspace_ids = [
    data.tfe_workspace.hcp_consul.id,
    data.tfe_workspace.hcp_packer.id,
    data.tfe_workspace.hcp_vault.id,
  ]

  variables = var.variables
}
