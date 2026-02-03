module "iam_role" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-role"
  version = "6.2.1"

  name = "github-actions"

  use_name_prefix = false

  trust_policy_permissions = {
    GitHubActionsOIDC = {
      actions = ["sts:AssumeRoleWithWebIdentity"]

      principals = [{
        type        = "Federated"
        identifiers = [module.iam_oidc_provider.arn]
      }]

      condition = [
        {
          test     = "StringEquals"
          variable = "token.actions.githubusercontent.com:aud"
          values   = ["sts.amazonaws.com"]
        },
        {
          test     = "StringLike"
          variable = "token.actions.githubusercontent.com:sub"
          values   = local.github_subs
        }
      ]
    }
  }

  policies = {
    ECRReadWrite = module.iam_policy.arn
  }
}
