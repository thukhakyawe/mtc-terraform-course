output "clone-urls" {
  value       = { for i in github_repository.mtc_repo : i.name => [i.ssh_clone_url, i.http_clone_url] }
  description = "Repository Names and URL"
  sensitive   = false
}
