variable "region" {
  description = "The AWS region to deploy the S3 bucket in"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default     = "mymarketbuck1"
}

variable "acl" {
  description = "The canned ACL to apply to the S3 bucket"
  type        = string
  default     = "private"
}

variable "environment" {
  description = "The environment tag for the S3 bucket"
  type        = string
  default     = "dev"
}

variable "versioning_status" {
  description = "The versioning status for the S3 bucket"
  type        = string
  default     = "Enabled"
}

variable "sse_algorithm" {
  description = "The server-side encryption algorithm to use"
  type        = string
  default     = "AES256"
}
