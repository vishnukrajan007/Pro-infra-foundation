output "ecr_repository_urls" {
  value = {
    for repo, mod in module.ecr :
    repo => mod.repository_url
  }
}

output "github_actions_role_arn" {
  value = module.iam_role.arn
}
