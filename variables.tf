variable "name" {
  type        = string
  description = "Name of the supported"
}

variable "image_tag_mutability" {
  type        = string
  description = "The tag mutability setting for the repositiry. Must be one of : MUTABLE or IMMUTABLE. Defaults to MUTABLE"
  default     = "MUTABLE"
}

variable "encryption_configuration" {
  type        = map
  description = "Encryption configuration for the repository"
  default     = {}
}

variable "image_scanning_configuration" {
  type        = map
  description = "Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the ECR User Guide for more information about image scanning."
  default     = {}
}

variable "tags" {
  type        = map
  description = "A map of tags to assign to the resource"
  default     = {}
}
## ECR encryption_configuration

variable "encryption_type" {
  type        = string
  description = "The encryption type to use for the repository. Valid values are AES256 or KMS. Defaults to AES256"
  default     = "AES256" 
}

variable "kms_key" {
  type        = string
  description = "El ARN de la clave KMS que se usará cuando encryption_typesea KMS. Si no se especifica, utiliza la clave administrada de AWS predeterminada para ECR."
  default     = ""
}

### Variable for image_scanning_configuration

variable "scan_on_push" {
  type        = bool
  description = "Indicates whether images are scanned after being pushed to the repository (true) or not scanned (false)"
  default     = "false"
}

########Variables for Ecr Repository Policy

variable "repository" {
  type        = string
  description = "Name of the repository to apply the policy"
}

variable "policy" {
  description = "The policy document. This is a JSON formatted string. For more information about building IAM policy documents with Terraform"
}

########## Variables for ECR Lifecycle Policy

variable "lifecycle_policy" {
  description = "The policy document. This is a JSON formatted string. See more details about Policy Parameters in the official AWS docs. For more information about building IAM policy documents with Terraform"
}

