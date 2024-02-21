terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.0"  
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "hosting_bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_object" "cloude" {
  bucket = aws_s3_bucket.hosting_bucket.id
  key    = "cloude/"  # Destination folder in the S3 bucket
  source = "staticsite/cloude"
  recursive = true
}



