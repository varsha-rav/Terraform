provider "aws" {
    region = "us-east-1"
}

resource "aws_security_group" "mysecuitygroup" {
    name = "allowtls"
    description = "Created and managed from terraform"
  
}

terraform {
  backend "s3" {
    bucket = "tfbucket-var"
    key = "terraformstate"
    region = "us-east-1"
  }
}