variable "numbers" {
  type = list(number)
}

variable "maps" {
  type = map(number)
}

variable "objects_list" {
  type = list(object({
    firstname = string
    lastname  = string
  }))
}

variable "users" {
  type = list(object({
    username = string
    role     = string
  }))
}