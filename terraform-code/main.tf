module "repos" {
  source   = "./modules/dev-repos"
  repo_max = 2
  env      = "dev"
  repos = {
    infra = {
      lang     = "terraform"
      filename = "main.tf"
      pages    = true
    },
    backend = {
      lang     = "python"
      filename = "python.py"
      pages    = false
    }
  }
}