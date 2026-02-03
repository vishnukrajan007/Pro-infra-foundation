module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.0.0"

  cluster_name    = var.cluster_name
  cluster_version = var.k8s_version
  subnets         = var.private_subnets
  vpc_id          = var.vpc_id

  # Optional logging
  cluster_enabled_log_types = ["api", "audit", "authenticator", "controllerManager", "scheduler"]

  # Node groups
  node_groups = var.node_groups

  # IAM OIDC (reuse existing IAM role for GitHub Actions if needed)
  map_roles = []
}
