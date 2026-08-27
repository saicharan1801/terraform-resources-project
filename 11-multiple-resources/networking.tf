resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    project = local.name
    name    = local.name
  }
}

resource "aws_subnet" "private" {
  count      = var.subnet_count
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.${count.index}.0/24"

  tags = {
    Project = local.name
    Name    = "${local.name}-{count.index}"
  }
}