terraform {
  # see https://developer.hashicorp.com/terraform/language/block/terraform#specifying-provider-requirements
  required_providers {
    # see https://registry.terraform.io/providers/hashicorp/tfe/0.70.0/
    tfe = {
      source  = "hashicorp/tfe"
      version = ">= 0.70.0, < 1.0.0"
    }
  }

  # see https://developer.hashicorp.com/terraform/language/block/terraform#specifying-a-required-terraform-version
  required_version = ">= 1.3.0, < 2.0.0"
}
