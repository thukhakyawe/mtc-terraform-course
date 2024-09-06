variable "repo_count" {
  type        = number
  description = "Number of repositories."
  default     = 1
}

variable "varsource" {
  type        = string
  description = "Soucre used to define variables."
  default     = "variable.tf"
}