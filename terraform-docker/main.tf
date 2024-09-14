terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

provider "docker" {
}

variable "ext_port" {
  type = number
  default = 1880  
}

variable "int_port" {
  type = number
  default = 1880  
}

variable "container_count" {
  type = number
  default = 1
}



resource "docker_image" "nodered_image" {
  name = "nodered/node-red:latest"
}

resource "random_string" "random" {
  count   = var.container_count
  length  = 4
  special = false
  upper   = false
}



resource "docker_container" "nodered_container" {
  count = var.container_count
  name  = join("-", ["nodered", random_string.random[count.index].result])
  image = docker_image.nodered_image.image_id
  ports {
    internal = var.int_port
    external = var.ext_port
  }
}




output "container-name" {
  value       = docker_container.nodered_container[*].name
  description = "The name of the container"
}

output "IP-Address" {
  value = [
    for i in docker_container.nodered_container[*]:
    join(":", [
      i.network_data[0].ip_address,  # Fetches the IP address from the network data
      (i.ports[0]["external"])
    ])
  ]
  description = "The IP Address and External Port of the containers"
}


