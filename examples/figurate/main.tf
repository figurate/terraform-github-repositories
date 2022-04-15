module "repositories" {
  source = "../.."
  repository_names = [
    "terraform-github-repositories"
  ]
  template = "figurate/terraform-module-template"
}

provider "github" {}
