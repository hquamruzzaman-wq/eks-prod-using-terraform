variable "aws_region" {
  type        = string
  description = "AWS region to deploy the EKS cluster into."
  default     = "us-east-1"
}

variable "cluster_name" {
  type        = string
  description = "EKS cluster name."
  default     = "prod-eks-cluster"
}

variable "vpc_cidr" {
  type        = string
  description = "VPC CIDR block."
  default     = "10.0.0.0/16"
}

variable "azs" {
  type        = list(string)
  description = "Availability Zones to use."
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "cluster_version" {
  type        = string
  description = "EKS cluster version."
  default     = "1.30"
}

variable "node_group_instance_types" {
  type        = list(string)
  description = "Instance types for EKS managed node group."
  default     = ["t3.medium"]
}

variable "node_group_min_size" {
  type        = number
  description = "Minimum number of nodes in the node group."
  default     = 2
}

variable "node_group_max_size" {
  type        = number
  description = "Maximum number of nodes in the node group."
  default     = 6
}

variable "node_group_desired_size" {
  type        = number
  description = "Desired number of nodes in the node group."
  default     = 3
}
