# This file configures Terraform itself, including which providers to install, 
# and which version of Terraform to use to provision your infrastructure

terraform {
  cloud {
    
    organization = "test-org-harshit"

    workspaces {
      name = "terraform-aws-get-started"
      project = "Learn-Terraform"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.12.0"
    }
  }

  # Terraform version
  required_version = ">= 1.13.1"
}