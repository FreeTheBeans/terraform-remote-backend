variable "bucket_name" {
  description = "The name of the S3 bucket. Must be globally unique."
  type        = string
}

variable "table_name" {
  description = "The name of the DynamoDB table. Must be unique in this AWS account."
  type        = string
  default     = "terraform-remote-state-dynamo"
}

variable "bucket_key" {
  description = "The name of the S3 bucket key"
  type        = string
}

variable "aws_resource_owner" {
  description = "The owner of the AWS resources"
  type        = string
  default     = "terraform"
}
