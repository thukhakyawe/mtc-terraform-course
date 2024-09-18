terraform {
  cloud {

    organization = "tkk-terraform"

    workspaces {
      name = "tkk-dev"
    }
  }
}