variable "tags" {
  description = "A mapping of tags to assign to the resource"
  type        = map(string)
  default = {
    "owner" = "Deyvis Espinoza"
  }
}

