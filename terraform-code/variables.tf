variable "repo_max" {
  type        = number
  description = "Number of repositories."
  default     = 2
  validation {
    condition     = var.repo_max <= 10
    error_message = "Do not deploy more than 5 repositories"
  }
}

variable "env" {
  type        = string
  description = "Deployment environment"
  validation {
    condition     = contains(["dev", "prod"], var.env)
    error_message = "Env must be 'dev' or 'prod'"
  }
}

variable "repos" {
  type        = map(map(string))
  description = "Repositories"
  validation {
    condition     = length(var.repos) <= var.repo_max
    error_message = "Please do not deplove more than the repo_max allows'"
  }
}

# variable "visibility" {
#   type = string
#   description = "Visibility for the repo."
#   default = var.env == "dev" ? "private" : "public"
# }