locals {
  double_numbers = [for num in var.numbers : num * 2]
  even_numbers   = [for num in var.numbers : num if num % 2 == 0]
  first_names    = [for person in var.objects_list : person.firstname]
  full_names     = [for person in var.objects_list : "${person.firstname} ${person.lastname}"]
}

output "double_numbers" {
  value = local.double_numbers
}

output "even_numbers" {
  value = local.even_numbers
}

output "firstnames" {
  value = local.first_names
}

output "fullnames" {
  value = local.full_names
}