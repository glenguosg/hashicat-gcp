terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "hashicorp-myorg"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
