locals {
  firstnames_of_employees = var.objects_list[*].firstname
  roles_from_splat        = [for username, user_details in local.users_map2 : user_details.roles]
  roles_from_splat_values = values(local.users_map2)[*].roles
}

output "first_splat" {
  value = local.firstnames_of_employees
}

output "roles_splat" {
  value = local.roles_from_splat
}

output "value_split" {
  value = local.roles_from_splat_values
}