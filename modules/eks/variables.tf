variable "cluster_name" {
  type        = string
  description = "Name of the EKS cluster."
}

variable "cluster_version" {
  type        = string
  description = "Kubernetes version for the EKS cluster."
}

variable "vpc_id" {
  type        = string
  description = "ID of the VPC for the EKS cluster."
}

variable "private_subnet_ids" {
  type        = list(string)
  description = "Private subnet IDs for the worker nodes."
}

variable "public_subnet_ids" {
  type        = list(string)
  description = "Public subnet IDs (used by some add-ons/load balancers)."
}

variable "node_group_instance_types" {
  type        = list(string)
  description = "Instance types for the managed node group."
}

variable "node_group_min_size" {
  type = number
}

variable "node_group_max_size" {
  type = number
}

variable "node_group_desired_size" {
  type = number
}
