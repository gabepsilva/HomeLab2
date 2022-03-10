// export TF_VAR_lxc_password='abc123'
variable lxc_password {
    type = string
}


variable "containers" {
  type = list(map(string))
  default = [
    {
      name      = "kloadbalancer1"
      fqdn      = "kloadbalancer1.psilva.org" 
      ip = "192.168.50.20"
      cpu = 1
      mem = "512MB"
    }
    ,
    {
      name      = "kmaster1"
      fqdn      = "kmaster1.psilva.org" 
      ip        = "192.168.50.21"
      cpu       = 2
      mem       = "2GB"
    }
    ,
    {
      name      = "kmaster2"
      fqdn      = "kmaster2.psilva.org" 
      ip        = "192.168.50.22"
      cpu       = 2
      mem       = "2GB"
    }
    ,
    {
      name      = "knode1"
      fqdn      = "knode1.psilva.org" 
      ip        = "192.168.50.31"
      cpu       = 2
      mem       = "2GB"
    }
    ,
    {
      name      = "knode2"
      fqdn      = "knode2.psilva.org" 
      ip        = "192.168.50.32"
      cpu       = 2
      mem       = "2GB"
    }
    ,
    {
      name      = "knode3"
      fqdn      = "knode3.psilva.org" 
      ip        = "192.168.50.33"
      cpu       = 4
      mem       = "4GB"
    }
    ,
    {
      name      = "knode4"
      fqdn      = "knode4.psilva.org" 
      ip        = "192.168.50.34"
      cpu       = 8
      mem       = "8GB"
    }
]
}