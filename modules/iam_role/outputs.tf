output "name" {
  value       = join("", aws_iam_role.default[*].name)
  description = "The name of the IAM role created"
}

output "id" {
  value       = join("", aws_iam_role.default[*].unique_id)
  description = "The stable and unique string identifying the role"
}

output "arn" {
  value       = join("", aws_iam_role.default[*].arn)
  description = "The Amazon Resource Name (ARN) specifying the role"
}

output "profiles" {
  value       = aws_iam_instance_profile.default
  description = "The instance profiles associated with the role"
}
