terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = ">= 0.12"
    }
  }
}

provider "aws" {
    region = var.aws_region
}

resource "aws_s3_bucket" "hosting_bucket" {
    bucket = var.bucket_name
}
