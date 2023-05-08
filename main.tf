locals {
  ecr_name = var.Ecr_repo_name
}
resource "aws_ecr_repository" "IaC_ecr_repo" {
  name = local.ecr_name
}

output "my_repo_url" {
  value = aws_ecr_repository.IaC_ecr_repo.repository_url
}
