terraform {
    required_providers {
      github = {
        source = "integrations/github"
        version = "~> 5.0"
      }
    }
}

provider "github" {
    token = "token_goes_here"
}

resource "github_repository" "version1" {
    name = var.reponame
    description = "created from terraform"
    visibility = "public"
  
}