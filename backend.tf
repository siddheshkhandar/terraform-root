terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "young-minds-app-tfstate-files"
    region = "us-east-1"
    key    = "project/terraform.tfstate"
  }
}
