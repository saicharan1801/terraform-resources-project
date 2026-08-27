variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "ec2_instance_type" {
  type        = string
  default     = "t2.micro"
  description = "The Size of Managed EC2 instances"

  validation {
    condition     = startswith(var.ec2_instance_type, "t3")
    error_message = "only support t3 family"
  }
}

variable "ec2_volume_config" {
  type = object({
    size = number
    type = string
  })
  description = "this has both volume size and type config"

  default = {
    size = 10
    type = "gp3"
  }
}

variable "additional_tags" {
  type    = map(string)
  default = {}
}

