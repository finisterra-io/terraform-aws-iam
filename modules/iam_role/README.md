# iam_role

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 2.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_instance_profile.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_instance_profile) | resource |
| [aws_iam_role.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.managed](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assume_role_actions"></a> [assume\_role\_actions](#input\_assume\_role\_actions) | The IAM action to be granted by the AssumeRole policy | `list(string)` | <pre>[<br>  "sts:AssumeRole",<br>  "sts:TagSession"<br>]</pre> | no |
| <a name="input_assume_role_conditions"></a> [assume\_role\_conditions](#input\_assume\_role\_conditions) | List of conditions for the assume role policy | <pre>list(object({<br>    test     = string<br>    variable = string<br>    values   = list(string)<br>  }))</pre> | `[]` | no |
| <a name="input_assume_role_policy"></a> [assume\_role\_policy](#input\_assume\_role\_policy) | The policy that grants an entity permission to assume the role | `string` | `""` | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| <a name="input_inline_policies"></a> [inline\_policies](#input\_inline\_policies) | IAM policy document (same as policy\_documents but in JSON format) | `list(any)` | `[]` | no |
| <a name="input_instance_profile_enabled"></a> [instance\_profile\_enabled](#input\_instance\_profile\_enabled) | Create EC2 Instance Profile for the role | `bool` | `false` | no |
| <a name="input_instance_profile_name"></a> [instance\_profile\_name](#input\_instance\_profile\_name) | The name of the instance profile to attach to the role | `string` | `""` | no |
| <a name="input_instance_profile_tags"></a> [instance\_profile\_tags](#input\_instance\_profile\_tags) | Additional tags for the instance profile | `map(string)` | `{}` | no |
| <a name="input_instance_profiles"></a> [instance\_profiles](#input\_instance\_profiles) | List of instance profiles to create and attach to the role | `list(any)` | `[]` | no |
| <a name="input_managed_policy_arns"></a> [managed\_policy\_arns](#input\_managed\_policy\_arns) | List of managed policies to attach to created role | `map(any)` | `{}` | no |
| <a name="input_max_session_duration"></a> [max\_session\_duration](#input\_max\_session\_duration) | The maximum session duration (in seconds) for the role. Can have a value from 1 hour to 12 hours | `number` | `3600` | no |
| <a name="input_path"></a> [path](#input\_path) | Path to the role and policy. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html) for more information. | `string` | `"/"` | no |
| <a name="input_permissions_boundary"></a> [permissions\_boundary](#input\_permissions\_boundary) | ARN of the policy that is used to set the permissions boundary for the role | `string` | `""` | no |
| <a name="input_policy_description"></a> [policy\_description](#input\_policy\_description) | The description of the IAM policy that is visible in the IAM policy manager | `string` | `""` | no |
| <a name="input_policy_document_count"></a> [policy\_document\_count](#input\_policy\_document\_count) | Number of policy documents (length of policy\_documents list) | `number` | `1` | no |
| <a name="input_policy_documents"></a> [policy\_documents](#input\_policy\_documents) | List of JSON IAM policy documents | `string` | `""` | no |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | The name of the IAM policy that is visible in the IAM policy manager | `string` | `null` | no |
| <a name="input_principals"></a> [principals](#input\_principals) | Map of service name as key and a list of ARNs to allow assuming the role as value (e.g. map(`AWS`, list(`arn:aws:iam:::role/admin`))) | `map(list(string))` | `{}` | no |
| <a name="input_role_description"></a> [role\_description](#input\_role\_description) | The description of the IAM role that is visible in the IAM role manager | `string` | `""` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | The name of the IAM role that is visible in the IAM role manager | `string` | `""` | no |
| <a name="input_role_name_prefix"></a> [role\_name\_prefix](#input\_role\_name\_prefix) | Creates a unique role name beginning with the specified prefix. Conflicts with role\_name. | `string` | `""` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. map(`BusinessUnit`,`XYZ`) | `map(string)` | `{}` | no |
| <a name="input_tags_enabled"></a> [tags\_enabled](#input\_tags\_enabled) | Enable/disable tags on IAM roles and policies | `string` | `true` | no |
| <a name="input_use_fullname"></a> [use\_fullname](#input\_use\_fullname) | If set to 'true' then the full ID for the IAM role name (e.g. `[var.namespace]-[var.environment]-[var.stage]`) will be used.<br><br>Otherwise, `var.name` will be used for the IAM role name. | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The Amazon Resource Name (ARN) specifying the role |
| <a name="output_id"></a> [id](#output\_id) | The stable and unique string identifying the role |
| <a name="output_name"></a> [name](#output\_name) | The name of the IAM role created |
| <a name="output_profiles"></a> [profiles](#output\_profiles) | The instance profiles associated with the role |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
