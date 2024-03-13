output "arn" {
  value       = join("", aws_iam_saml_provider.default[*].arn)
  description = "The ARN assigned by AWS for this provider"
}
