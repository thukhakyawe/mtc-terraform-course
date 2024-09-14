output "container-name" {
  value       = docker_container.nodered_container[*].name
  description = "The name of the container"
}

output "IP-Address" {
  value = [
    for i in docker_container.nodered_container[*] : join(":", [i.network_data[0].ip_address, (i.ports[0]["external"])])
  ]
  description = "The IP Address and External Port of the containers"
  
}

