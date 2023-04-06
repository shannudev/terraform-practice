resource "aws_s3_bucket" "buckets" {
  bucket = "tf-bucket1234567"

  tags = {
    Name        = "Mybucket1234"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "buckets" {
  bucket = aws_s3_bucket.buckets.id
  acl    = "private"
}