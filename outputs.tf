output "repository_name" {
  description = "Name of the ECR Repository"
  value       = aws_ecr_repository.ecr_repository.name
}
