resource "aws_efs_file_system" "cohort_demo_efs" {
   creation_token = "2191420-cohort-demo-efs-creation-token"
   performance_mode = "generalPurpose"
   throughput_mode = "bursting"
   encrypted = "true"
   lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
  }
  tags = var.resource_tags_dr
 }

resource "aws_efs_mount_target" "cohort_demo_efs_mount_target" {
   count = 2
   file_system_id  = aws_efs_file_system.cohort_demo_efs.id
   subnet_id = var.efs_subnet_ids[count.index]
   security_groups = [var.cohort_demo_efs_sg]
 }

 resource "aws_efs_access_point" "cohort_demo_efs_access_point" {
  file_system_id = aws_efs_file_system.cohort_demo_efs.id
}