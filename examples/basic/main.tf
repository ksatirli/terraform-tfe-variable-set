module "hcp_credentials" {
  source = "../.."

  name         = "hashicorp-cloud-platform"
  description  = "See https://cloud.hashicorp.com/docs/hcp/access-control/service-principals for more information."
  organization = "a-demo-organization"

  workspace_ids = [
    "hcp-consul",
    "hcp-packer",
    "hcp-vault",
  ]

  variables = var.variables
}
