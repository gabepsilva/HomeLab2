// export TF_VAR_lxc_password='abc123'
variable lxc_password {
    type = string
}

variable "containers" {
  type = list(map(string))
  default = [
    {
      name      = "pmaster1"
      fqdn      = "pmaster1.psilva.org" 
      ip        = "192.168.49.211"
      cpu       = 2
      mem       = "3GB"
    }
    ,
    {
      name      = "pnode1"
      fqdn      = "pnode1.psilva.org" 
      ip        = "192.168.49.221"
      cpu       = 4
      mem       = "4GB"
    }
    ,
    {
      name      = "pnode2"
      fqdn      = "pnode2.psilva.org" 
      ip        = "192.168.49.222"
      cpu       = 8
      mem       = "6GB"
    }
]
}