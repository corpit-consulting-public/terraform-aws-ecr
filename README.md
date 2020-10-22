
# tf-aws-dynamodb

Terraform module which creates ERC Repository resources on AWS.

* You can use this module to create an ECR registry using few parameters (simple example) or define in detail every aspect of the registry

```hcl

module "datapipeline_data_extraction" {
  source                = "corpit-consulting-public/ecr/aws"
  version               = "v0.4.0"
  name                  = var.name
  image_tag_mutability  = var.image_tag_mutability
  scan_on_push          = var.scan_on_push
  policy                = file("${path.module}/policies/policy.json")
  lifecycle_policy      = file("${path.module}/policies/lifecycle_policy.json")
}

```
## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| lifecycle\_policy | The policy document. This is a JSON formatted string. See more details about Policy Parameters in the official AWS docs. For more information about building IAM policy documents with Terraform | string | n/a | yes |
| name | Name of the supported | string | n/a | yes |
| policy | The policy document. This is a JSON formatted string. For more information about building IAM policy documents with Terraform | string | n/a | yes |
| encryption\_configuration | Encryption configuration for the repository | map | `<map>` | no |
| encryption\_type | The encryption type to use for the repository. Valid values are AES256 or KMS. Defaults to AES256 | string | `"AES256"` | no |
| image\_scanning\_configuration | Configuration block that defines image scanning configuration for the repository. By default, image scanning must be manually triggered. See the ECR User Guide for more information about image scanning. | map | `<map>` | no |
| image\_tag\_mutability | The tag mutability setting for the repositiry. Must be one of : MUTABLE or IMMUTABLE. Defaults to MUTABLE | string | `"MUTABLE"` | no |
| kms\_key | El ARN de la clave KMS que se usará cuando encryption\_typesea KMS. Si no se especifica, utiliza la clave administrada de AWS predeterminada para ECR. | string | `""` | no |
| scan\_on\_push | Indicates whether images are scanned after being pushed to the repository \(true\) or not scanned \(false\) | bool | `"false"` | no |
| tags | A map of tags to assign to the resource | map | `<map>` | no |

## Outputs

| Name | Description |
|------|-------------|
| repository\_name | Name of the ECR Repository |

