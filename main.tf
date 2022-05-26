provider "aws" {
  region  = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "bucket-feliperibeiro95"
    key    = "terraform-test.tfstate"
    region = "us-east-2"
  }
}

module "instance" {
  source = "./instances"
  instance_enabled = var.instance_enabled
}