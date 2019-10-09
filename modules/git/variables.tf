variable "user" {
  description = "Setting commit username and email address"
  type = object({
    name  = string
    email = string
  })
}

variable "alias" {
  description = "Setting git aliases"
  type = string
  default = ""
}
