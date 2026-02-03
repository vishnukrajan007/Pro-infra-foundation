locals {
  github_subs = [
    for repo in var.github_repos :
    "repo:${repo}:ref:refs/heads/*"
  ]

  ecr_repos = [
    for repo in var.github_repos :
    "arn:aws:ecr:${var.region}:${data.aws_caller_identity.current.account_id}:repository/${lower(repo)}"
  ]
}
