terraform {
  required_version = "~> 1.7"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

provider "aws" {
  region = "us-east-1"
  alias  = "us_east"
}

resource "aws_s3_bucket" "mumbai_bucket" {
  bucket = "charan-new-bucket-18"
}

resource "aws_s3_bucket" "virginia_bucket" {
  provider = aws.us_east
  bucket   = "charan-new-bucket-19"
}