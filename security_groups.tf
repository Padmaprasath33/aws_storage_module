resource "aws_security_group" "cohort_demo_efs_sg" {
  depends_on = [
    var.efs_sg_depends_on,
  ]
  name        = var.cohort_demo_efs_sg_name
  description = "Security group for efs storage"
  vpc_id      = var.vpc_id
 


  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    security_groups = [var.efs_sg_depends_on]
  }
}