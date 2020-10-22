
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
