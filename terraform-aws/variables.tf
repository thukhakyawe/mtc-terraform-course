variable "aws_region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "ap-southeast-1" # Or any valid region
}


variable "access_ip" {
  type = string
}

variable "dbname" {
  type = string
}

variable "dbuser" {
  type      = string
  sensitive = true

}

variable "dbpassword" {
  type      = string
  sensitive = true
}