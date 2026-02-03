terraform {
  backend "s3" {
    bucket         = "demo-terraform-eks-vkr6677-state-s3-bucket"
    key            = "eks/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-eks-state-locks"
    encrypt        = true
  }
}
