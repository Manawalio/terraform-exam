resource "aws_s3_bucket" "mymarketbuck1" {
  bucket = var.bucket_name
  acl    = var.acl

  tags = {
    Name        = var.bucket_name
    Environment = var.environment
  }
}

resource "aws_s3_bucket_versioning" "mymarketbuck1" {
  bucket = aws_s3_bucket.mymarketbuck1.bucket

  versioning_configuration {
    status = var.versioning_status
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "mymarketbuck1" {
  bucket = aws_s3_bucket.mymarketbuck1.bucket

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = var.sse_algorithm
    }
  }
}
