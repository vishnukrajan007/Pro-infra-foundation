cluster_name = "demo-eks-cluster"
k8s_version  = "1.30"

node_groups = {
  ng1 = {
    desired_capacity = 2
    max_capacity     = 3
    min_capacity     = 1
    instance_types   = ["t3.medium"]
  }
}

region = "ap-south-1"
