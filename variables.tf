variable "resource_tags" {
  description = "Tags to set for all resources"
  type        = map(string)
  /*default     = {
    project     = "aws-proserv",
    environment = "dev"
    application = "cohort-demo"
  }
  */
}

variable "resource_tags_dr" {
  description = "Tags to set for all resources"
  type        = map(string)
  /*default     = {
    project     = "aws-proserv",
    environment = "dev"
    application = "cohort-demo"
    backup      = "yes"
  }
  */
}

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

variable "cohort_demo_efs_sg" {
  description = "EFS security group"
  //default     = ""
}

variable "vpc_id" {
  description = "VPC main id"
  //default     = ""
}

variable "region" {
  description = "AWS region"
  //default     = ""
}