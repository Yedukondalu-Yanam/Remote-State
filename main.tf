terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      region = "us-east-1"
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

resource "aws_instance" "myec2" {
    instance_type = "t2.micro"
    ami = "ami-0c2b8ca1dad447f8a"
  
    tags = {
        Name = "Myinstance-Remote-State"
    }
}
