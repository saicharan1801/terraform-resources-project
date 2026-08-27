locals {
  name = "Sai Charan"
  age  = 29
  my_object = {
    key1 = 10
    key2 = "my_value"
  }
}

output "test" {
  value = upper(local.name)
}

output "age" {
  value = pow(local.age, 2)
}

output "file_usage" {
  value = yamldecode(file("${path.module}/users.yaml")).users[*].group
}

output "jsoning" {
  value = jsonencode(local.my_object)
}