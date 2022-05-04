variable lxc_password {
  type = string
}

variable "containers" {
  type = list(map(string))
  default = []
}
