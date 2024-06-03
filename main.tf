terraform {
}

variable "releases" {
  type    = list(string)
  default = ["1"]
}

resource "null_resource" "will_be_recreated" {
  for_each = toset(var.releases)
}

resource "null_resource" "will_not_be_recreated" {
  for_each   = {
    for index, release in var.releases:
      index => release
  }
}