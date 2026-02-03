variable "region" {
  type        = string
  description = "AWS region"
}

variable "github_repos" {
  type        = list(string)
  description = "GitHub repositories (org/repo)"
}
