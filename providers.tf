provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = ">= 1.3.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0"
    }
  }
  # OPTIONAL: Remote backend for state (e.g., S3 + DynamoDB)
  # backend "s3" {
  #   bucket         = "my-tf-state-bucket"
  #   key            = "eks/prod/terraform.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "my-tf-locks"
  #   encrypt        = true
  # }
}
