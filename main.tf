/**
 * # Github Repositories
 *
 * [![CI](https://github.com/figurate/terraform-github-repositories/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-github-repositories/actions/workflows/main.yml)
 *
 *
 * ![Github Repositories](github_repositories.png)
 */
resource "github_repository" "repositories" {
  count      = length(var.repository_names)
  name       = var.repository_names[count.index]
  visibility = var.visibility
  vulnerability_alerts = true
  dynamic "template" {
    for_each = var.template != null ? [1] : []
    content {
      owner      = split("/", var.template)[0]
      repository = split("/", var.template)[1]
    }
  }
}
