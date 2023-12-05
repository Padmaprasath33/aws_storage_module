variable "bucket_name" {
  description = "S3 bucket name"
  //default     = ""
}

variable "log_bucket_name" {
  description = "S3 logging bucket name"
  //default     = ""
}

variable "efs_subnet_ids" {
  description = "EFS subnet ids"
  type    = list(string)
  default     = ["", ""] 
}

variable "efs_sg_depends_on" {
  description = "EFS security group calling other security groups as inputs for inbound & outbound"
  //default     = ""
}

variable "vpc_id" {
  description = "VPC main id"
  //default     = ""
}

variable "cohort_demo_efs_creation_token" {
  description = "EFS creation token"
  //default     = ""
}