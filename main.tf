# see https://registry.terraform.io/providers/hashicorp/tfe/0.80.0/docs/resources/variable_set
resource "tfe_variable_set" "main" {
  name         = var.name
  description  = var.description
  global       = var.global
  priority     = var.priority
  organization = var.organization

  lifecycle {
    # see https://developer.hashicorp.com/terraform/tutorials/configuration-language/custom-conditions#add-preconditions
    precondition {
      condition     = !var.priority || length(var.workspace_ids) == 0
      error_message = "Unable to set both `priority` and `workspace_ids` as they are mutually exclusive."
    }
  }
}

# see https://registry.terraform.io/providers/hashicorp/tfe/0.80.0/docs/resources/workspace_variable_set
resource "tfe_workspace_variable_set" "main" {
  for_each = toset(var.workspace_ids)

  variable_set_id = tfe_variable_set.main.id
  workspace_id    = each.key
}

# see https://registry.terraform.io/providers/hashicorp/tfe/0.80.0/docs/resources/variable
resource "tfe_variable" "main" {
  # see https://developer.hashicorp.com/terraform/language/meta-arguments
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
