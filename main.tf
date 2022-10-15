provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "bucket-feliperibeiro95"
    key    = "terraform-test.tfstate"
    region = "us-east-2"
  }
}

module "instance" {
  source           = "./instances"
  instance_enabled = var.instance_enabled
}

module "route53" {
  source           = "./route_53"
  domain_primary = var.domain_primary
  dns_entry   = var.dns_entry
}