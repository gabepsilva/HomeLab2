// export TF_VAR_lxc_password='abc123'
variable lxc_password {
    type = string
}

variable "containers" {
  type = list(map(string))
  default = [
    # {
    #   name      = "loadbalancer1"
    #   fqdn      = "loadbalancer1.psilva.org" 
    #   ip        = "192.168.51.200"
    #   cpu       = 1
    #   mem       = "1GiB"

    #   username  = "kube"
    #   userpass  = "$y$j9T$FEkVuTF5qJOL0zHn2GBiz1$VkCWUrsGFAmWLWeyZsjYMoG31bgRZkFns2bJLzHN1r8"
    # }
    # ,
    {
      name      = "dmaster1"
      fqdn      = "dmaster1.dev.psilva.org" 
      ip        = "192.168.51.201"
      cpu       = 2
      mem       = "3GB"
      disk      = "8GB"

      username  = "kube"
      userpass  = "$y$j9T$FEkVuTF5qJOL0zHn2GBiz1$VkCWUrsGFAmWLWeyZsjYMoG31bgRZkFns2bJLzHN1r8"
    },
    # {
    #   name      = "pmaster2"
    #   fqdn      = "pmaster1.psilva.org" 
    #   ip        = "192.168.15.202"
    #   cpu       = 2
    #   mem       = "3GiB"

    #   username  = "kube"
    #   userpass  = "$y$j9T$FEkVuTF5qJOL0zHn2GBiz1$VkCWUrsGFAmWLWeyZsjYMoG31bgRZkFns2bJLzHN1r8"
    # },
    {
      name      = "dnode1"
      fqdn      = "dnode1.dev.psilva.org" 
      ip        = "192.168.51.203"
      cpu       = 2
      mem       = "4GB"
      disk      = "11GB"

      username  = "kube"
      userpass  = "$y$j9T$FEkVuTF5qJOL0zHn2GBiz1$VkCWUrsGFAmWLWeyZsjYMoG31bgRZkFns2bJLzHN1r8"
    },
    {
      name      = "dnode2"
      fqdn      = "dnode2.dev.psilva.org" 
      ip        = "192.168.51.204"
      cpu       = 4
      mem       = "4GB"
      disk      = "12GB"

      username  = "kube"
      userpass  = "$y$j9T$FEkVuTF5qJOL0zHn2GBiz1$VkCWUrsGFAmWLWeyZsjYMoG31bgRZkFns2bJLzHN1r8"
    }
]
}