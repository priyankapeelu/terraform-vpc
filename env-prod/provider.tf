provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-b63"
    key    = "roboshop-basic-setup/terraform.tfstate"
    region = "us-east-1"
  }
}