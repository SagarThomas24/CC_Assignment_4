resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-bucket-123-sagar-2025"
}

resource "aws_s3_bucket_ownership_controls" "my_bucket_ownership" {
  bucket = aws_s3_bucket.my_bucket.id

  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}
