variable "enabled" {
  type        = bool
  description = "Set to false to prevent the module from creating any resources"
  default     = true
}

variable "managed_policy_arns" {
  type        = map(any)
  description = "List of managed policies to attach to created role"
  default     = {}
}

variable "max_session_duration" {
  type        = number
  default     = 3600
  description = "The maximum session duration (in seconds) for the role. Can have a value from 1 hour to 12 hours"
}

variable "permissions_boundary" {
  type        = string
  default     = ""
  description = "ARN of the policy that is used to set the permissions boundary for the role"
}

variable "role_description" {
  type        = string
  description = "The description of the IAM role that is visible in the IAM role manager"
  default     = ""
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

variable "role_name" {
  type        = string
  description = "The name of the IAM role that is visible in the IAM role manager"
  default     = ""
}

variable "assume_role_policy" {
  type        = string
  description = "The policy that grants an entity permission to assume the role"
  default     = ""
}

variable "inline_policies" {
  type        = list(any)
  description = "IAM policy document (same as policy_documents but in JSON format)"
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)"
  default     = {}
}

variable "instance_profiles" {
  type        = list(any)
  description = "List of instance profiles to create and attach to the role"
  default     = []
}
