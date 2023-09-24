terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "k-state-file-bucket"
    dynamodb_table = "backend-locking-table"
    region         = "ap-south-1"
    key            = "devops-workshop-project.tfstate"
  }
}

provider "aws" {
  region = "ap-south-1"
}