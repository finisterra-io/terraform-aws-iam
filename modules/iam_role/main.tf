
resource "aws_iam_role" "default" {
  count                = var.enabled ? 1 : 0
  name                 = var.role_name
  assume_role_policy   = var.assume_role_policy
  description          = var.role_description
  max_session_duration = var.max_session_duration
  permissions_boundary = var.permissions_boundary
  path                 = var.path
  dynamic "inline_policy" {
    for_each = var.inline_policies
    content {
      name   = inline_policy.value.name
      policy = inline_policy.value.policy
    }
  }
  tags = var.tags_enabled ? var.tags : null
}

resource "aws_iam_instance_profile" "default" {
  count = var.enabled && var.instance_profile_enabled ? 1 : 0
  name  = var.instance_profile_name
  role  = join("", aws_iam_role.default.*.name)
}


# resource "aws_iam_role_policy_attachment" "default" {
#   count      = module.this.enabled && var.policy_document_count > 0 ? 1 : 0
#   role       = join("", aws_iam_role.default.*.name)
#   policy_arn = join("", aws_iam_policy.default.*.arn)
# }

locals {
  policy_name_to_arn_map = {
    for arn in var.managed_policy_arns : element(split("/", arn), 1) => arn
  }
}

resource "aws_iam_role_policy_attachment" "managed" {
  for_each   = var.enabled ? local.policy_name_to_arn_map : {}
  role       = join("", aws_iam_role.default.*.name)
  policy_arn = each.value
}
