# Terraform Cloud: Variable Set

This Terraform Module manages the lifecycle of [Terraform Cloud Variable Sets](https://www.terraform.io/cloud-docs/api-docs/variable-sets).

## Table of Contents

<!-- TOC -->
* [Terraform Cloud: Variable Set](#terraform-cloud--variable-set)
  * [Table of Contents](#table-of-contents)
  * [Requirements](#requirements)
  * [Usage](#usage)
  * [Author Information](#author-information)
  * [License](#license)
<!-- TOC -->

## Requirements

* Terraform Cloud [Account](https://app.terraform.io/session)
* Terraform `1.2.x` or newer.

## Usage

For examples, see the [./examples](https://github.com/ksatirli/terraform-tfe-variable-set/tree/main/examples/) directory.

<!-- BEGIN_TF_DOCS -->
### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| description | Description of the variable set. | `string` | n/a | yes |
| name | Name of the variable set. | `string` | n/a | yes |
| organization | Name of the organization. | `string` | n/a | yes |
| variables | List of Objects containing Variable definitions. | <pre>list(object({<br>    key         = string<br>    value       = string<br>    category    = string<br>    description = string<br>    sensitive   = bool<br>  }))</pre> | n/a | yes |
| workspace_id | Workspace ID to add the Variable Set to. | `string` | n/a | yes |
| global | Toggle to make Variable Set available to all Workspaces in the Organization. | `bool` | `false` | no |

### Outputs

| Name | Description |
|------|-------------|
| tfe_variable | Exported Attributes for `tfe_variable`. |
| tfe_variable_set | Exported Attributes for `tfe_variable_set`. |
| tfe_workspace_variable_set | Exported Attributes for `tfe_workspace_variable_set`. |
<!-- END_TF_DOCS -->

## Author Information

This module is maintained by the contributors listed on [GitHub](https://github.com/ksatirli/terraform-tfe-variable-set/graphs/contributors).

## License

Licensed under the Apache License, Version 2.0 (the "License").

You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0).

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an _"AS IS"_ basis, without WARRANTIES or conditions of any kind, either express or implied.

See the License for the specific language governing permissions and limitations under the License.
