data "aws_iam_policy_document" "default" {
  count                     = var.enabled && var.policy_document_count > 0 ? 1 : 0
  override_policy_documents = [var.policy_documents]
}

resource "aws_iam_policy" "default" {
  count       = var.enabled && var.policy_document_count > 0 ? 1 : 0
  name        = var.policy_name
  description = var.policy_description
  policy      = join("", data.aws_iam_policy_document.default.*.json)
  path        = var.path
  tags        = var.tags_enabled ? var.tags : null
}

