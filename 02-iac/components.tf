terraform {
  required_providers {
    aws= {
        source = "hashicorp/aws"
        version = "5.37.0"
    }
  }
}

resource "aws_s3_bucket" "my-bucket" {
  bucket = "my-unique-bucket-name"
}

resource "aws_s3_bucket_versioning" "my-bucket_versioning" {
  bucket = aws_s3_bucket.my-bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

