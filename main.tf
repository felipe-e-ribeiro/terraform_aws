provider "aws" {
  region  = "us-east-2"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    bucket = "bucket-feliperibeiro95"
    key    = "terraform-test.tfstate"
    region = "us-east-2"
  }
}
