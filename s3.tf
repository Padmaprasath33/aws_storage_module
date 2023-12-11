/*resource "aws_s3_bucket" "cohort_demo" {
  bucket = var.bucket_name
  tags = var.resource_tags_dr
}

resource "aws_s3_bucket_versioning" "cohort_demo_bucket_versioning" {
  bucket = aws_s3_bucket.cohort_demo.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "cohort_demo_s3_bucket_public_access_block" {
  bucket = aws_s3_bucket.cohort_demo.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket" "cohort_demo_log_bucket" {
  bucket = var.log_bucket_name
  tags = var.resource_tags_dr
}

resource "aws_s3_bucket_versioning" "cohort_demo_log_bucket_bucket_versioning" {
  bucket = aws_s3_bucket.cohort_demo_log_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "cohort_demo_log_bucket_s3_bucket_public_access_block" {
  bucket = aws_s3_bucket.cohort_demo_log_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_logging" "cohort_demo_log_bucket" {
  bucket = aws_s3_bucket.cohort_demo.id

  target_bucket = aws_s3_bucket.cohort_demo_log_bucket.id
  target_prefix = "log/"
}

resource "aws_kms_key" "mykey_cohort_demo" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
  tags = var.resource_tags
}

resource "aws_s3_bucket_server_side_encryption_configuration" "cohort_demo_s3_bucket_server_side_encryption_configuration" {
  bucket = aws_s3_bucket.cohort_demo.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.mykey_cohort_demo.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "cohort_demo_log_bucket_s3_bucket_server_side_encryption_configuration" {
  bucket = aws_s3_bucket.cohort_demo_log_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.mykey_cohort_demo.arn
      sse_algorithm     = "aws:kms"
    }
  }
}
*/