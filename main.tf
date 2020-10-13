#### ECR repository

resource "aws_ecr_repository" "ecr_repository" {
  name                 = var.name
  image_tag_mutability = var.image_tag_mutability

  image_scanning_configuration {
    scan_on_push = var.scan_on_push
  }
  encryption_configuration {
    encryption_type = var.encryption_type
    kms_key         = var.kms_key
  }
}

###### ECR Repository Policy

resource "aws_ecr_repository_policy" "repository_policy" {
  repository = aws_ecr_repository.ecr_repository.name
  policy     = var.policy
}

##### ECR Lifecycle Repository

resource "aws_ecr_lifecycle_policy" "lifecycle_policy" {
  repository = aws_ecr_repository.ecr_repository.name
  policy     = var.lifecycle_policy
}

