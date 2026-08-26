resource "random_id" "bucket_id" {
  byte_length = 8
}

resource "aws_s3_bucket" "sai-bucket" {
  bucket = "sai-bucket-${random_id.bucket_id.hex}"
}

output "bucket_name" {
  value = aws_s3_bucket.sai-bucket.bucket
}