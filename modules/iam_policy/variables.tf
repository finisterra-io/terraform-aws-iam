variable "enabled" {
  type        = bool
  description = "Set to false to prevent the module from creating any resources"
  default     = true
}

variable "policy_documents" {
  type        = string
  description = "List of JSON IAM policy documents"
  default     = ""
}

variable "policy_document_count" {
  type        = number
  description = "Number of policy documents (length of policy_documents list)"
  default     = 1
}

variable "policy_name" {
  type        = string
  description = "The name of the IAM policy that is visible in the IAM policy manager"
}

variable "policy_description" {
  type        = string
  default     = ""
  description = "The description of the IAM policy that is visible in the IAM policy manager"
}

variable "path" {
  type        = string
  description = "Path to the role and policy. See [IAM Identifiers](https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html) for more information."
  default     = "/"
}

variable "tags_enabled" {
  type        = string
  description = "Enable/disable tags on IAM roles and policies"
  default     = true
}

variable "tags" {
  type        = map(string)
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
  default     = {}
}
