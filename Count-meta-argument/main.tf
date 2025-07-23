provider "aws" {
    region = "us-east-1"
  
}

resource "aws_iam_user" "user" {
  count = length(var.user-list)
  name = var.user-list[count.index]
}