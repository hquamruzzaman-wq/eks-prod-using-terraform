variable "role_name_prefix" {
  type        = string
  description = "Prefix for the IAM role name."
}

variable "cluster_oidc_provider_arn" {
  type        = string
  description = "ARN of the EKS OIDC provider."
}

variable "namespace" {
  type        = string
  description = "Kubernetes namespace of the service account."
}

variable "service_account_name" {
  type        = string
  description = "Kubernetes service account name."
}

variable "policy_arn" {
  type        = string
  description = "IAM policy ARN to attach to the role."
}
