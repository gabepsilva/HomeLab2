// export TF_VAR_lxc_password='abc123'
variable lxc_password {
    type = string
}

variable "containers" {
  type = list(map(string))
  default = [
    {
      name      = "dmaster1"
      fqdn      = "dmaster1.psilva.org" 
      ip        = "192.168.51.211"
      cpu       = 2
      mem       = "3GB"
    }
    ,
    {
      name      = "dnode2"
      fqdn      = "dnode2.psilva.org" 
      ip        = "192.168.51.222"
      cpu       = 4
      mem       = "4GB"
    }
]
}