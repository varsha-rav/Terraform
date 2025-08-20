terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">=2.7.1"
    }
  }

  backend "s3" {
    bucket       = "eks-mybucket"
    key          = "terraform/eks/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
  }

}