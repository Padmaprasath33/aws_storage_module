output "cohort_demo_efs_filesystem_id" {
  value = aws_efs_file_system.cohort_demo_efs.id
}

output "aws_efs_access_point_id" {
  value = aws_efs_access_point.cohort_demo_efs_access_point.id
}

output "cohort_demo_efs-mount_target" {
  value = aws_efs_mount_target.cohort_demo_efs_mount_target[*].id
}

/*output "cohort_demo_s3_bucket_id" {
  value = aws_s3_bucket.cohort_demo.id
}

output "cohort_demo_log_bucket_id" {
  value = aws_s3_bucket.cohort_demo_log_bucket.id
}

output "kms_mykey_cohort_demo_id" {
  value = aws_kms_key.mykey_cohort_demo.id
}

output "kms_mykey_cohort_demo_arn" {
  value = aws_kms_key.mykey_cohort_demo.arn
}
*/