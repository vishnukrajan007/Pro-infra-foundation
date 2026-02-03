variable "region" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "k8s_version" {
  type    = string
  default = "1.30"
}

variable "node_groups" {
  type = map(object({
    desired_capacity = number
    max_capacity     = number
    min_capacity     = number
    instance_types   = list(string)
  }))
  default = {}
}

# VPC inputs from network layer
variable "vpc_id" {
  type = string
}

variable "private_subnets" {
  type = list(string)
}
