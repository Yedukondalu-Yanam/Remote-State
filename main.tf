terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "remote" {
  #organization = "REPLACE_ME"
    organization = "Remote-State"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}
