provider "aws" {
  region = var.aws_region
}

terraform {
  backend "s3" {
    bucket = "tfstate--terraform"
    key = "terraform.tfstate"
    region = "us-east-2"
  }
}