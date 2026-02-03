output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  value = module.eks.cluster_security_group_id
}

output "cluster_oidc_issuer" {
  value = module.eks.cluster_oidc_issuer
}

output "node_group_names" {
  value = keys(module.eks.node_groups)
}
