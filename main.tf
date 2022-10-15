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
  source         = "./route_53"
  domain_primary = var.domain_primary
  dns_entry      = var.dns_entry
}

output "ns_domain" {
  value = module.route53.dns_ns
}

locals {
  dns_final_info = [
  for k, v in module.route53.dns_info : {
    address = lookup(v, "fqdn")
    resolve   = lookup(v, "records")
  }
  ]
}

output "dns_fqdn" {
  value = local.dns_final_info
}