variable "image" {
  type        = map(any)
  description = "Image for contailer"
  default = {
    dev  = "nodered/node-red:latest"
    prod = "nodered/node-red:latest-minimal"
  }
}

variable "ext_port" {
  type = map(any)
  validation {
    condition     = max(var.ext_port["dev"]...) <= 65535 && min(var.ext_port["dev"]...) > 0
    error_message = "External Port must be 0 to 65535"
  }

  validation {
    condition     = max(var.ext_port["prod"]...) <= 65535 && min(var.ext_port["prod"]...) > 0
    error_message = "External Port must be 0 to 65535"
  }
}



variable "int_port" {
  type = number
  #   validation {
  #     condition     = var.int_port == 1880
  #     error_message = "Internal Port must be 1880"
  #   }
}

locals {
  container_count = length(var.ext_port[terraform.workspace])
}