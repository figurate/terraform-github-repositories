# Github Repositories

[![CI](https://github.com/figurate/terraform-github-repositories/actions/workflows/main.yml/badge.svg)](https://github.com/figurate/terraform-github-repositories/actions/workflows/main.yml)

![Github Repositories](github\_repositories.png)

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| github | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| repository\_names | A list of repository names to manage | `list(string)` | `[]` | no |
| template | A template repository used to create the repositories (owner/name) | `any` | `null` | no |
| visibility | Set repositories visibility (public or private) | `string` | `"public"` | no |

## Outputs

No output.

