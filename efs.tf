resource "aws_efs_file_system" "cohort_demo_efs" {
   creation_token = "efs"
   performance_mode = "generalPurpose"
   throughput_mode = "bursting"
   encrypted = "true"

 }

 resource "aws_efs_file_system" "cohort_demo_efs_with_lifecyle_policy" {
  creation_token = "efs"

  lifecycle_policy {
    transition_to_ia = "AFTER_30_DAYS"
  }
}


resource "aws_efs_mount_target" "cohort_demo_efs_mount_target" {
   //count          = "2"
   file_system_id  = aws_efs_file_system.cohort_demo_efs.id
   subnet_id = [var.efs_subnet_ids[0], var.efs_subnet_ids[1] ]
   security_groups = [aws_security_group.cohort_demo_efs_sg.id]
 }