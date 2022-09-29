# see https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable_set
resource "tfe_variable_set" "main" {
  name         = var.name
  description  = var.description
  global       = var.global
  organization = var.organization
}

# see https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/workspace_variable_set
resource "tfe_workspace_variable_set" "main" {
  for_each = toset(var.workspace_ids)

  variable_set_id = tfe_variable_set.main.id
  workspace_id    = each.key
}

# see https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable
resource "tfe_variable" "main" {
  # see https://www.terraform.io/docs/language/meta-arguments/for_each.html
  for_each = {
    for item in var.variables :
    item.key => item
  }

  key             = each.key
  value           = each.value.value
  category        = each.value.category
  description     = each.value.description
  sensitive       = each.value.sensitive
  variable_set_id = tfe_variable_set.main.id
}
