
**This repo has basic learning of Terraform Infrastructure**

We will start by learning basic piece of code to start with version of ***Hashicorp Terraform*** and **providers**

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
```