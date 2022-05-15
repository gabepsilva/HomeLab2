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
    #   ip        = "192.168.49.200"
    #   cpu       = 1
    #   mem       = "1GiB"

    #   username  = "kube"
    #   userpass  = "$y$j9T$FEkVuTF5qJOL0zHn2GBiz1$VkCWUrsGFAmWLWeyZsjYMoG31bgRZkFns2bJLzHN1r8"
    # }
    # ,
    {
      name      = "pmaster1"
      fqdn      = "pmaster1.psilva.org" 
      ip        = "192.168.49.201"
      cpu       = 2
      mem       = "3GB"
      disk      = "8GB"

      username  = "kube"
      userpass  = "$y$j9T$FEkVuTF5qJOL0zHn2GBiz1$VkCWUrsGFAmWLWeyZsjYMoG31bgRZkFns2bJLzHN1r8"
    },
    # {
    #   name      = "pmaster2"
    #   fqdn      = "pmaster1.psilva.org" 
    #   ip        = "192.168.49.202"
    #   cpu       = 2
    #   mem       = "3GiB"

    #   username  = "kube"
    #   userpass  = "$y$j9T$FEkVuTF5qJOL0zHn2GBiz1$VkCWUrsGFAmWLWeyZsjYMoG31bgRZkFns2bJLzHN1r8"
    # },
    {
      name      = "pnode1"
      fqdn      = "pnode1.psilva.org" 
      ip        = "192.168.49.203"
      cpu       = 2
      mem       = "4GB"
      disk      = "11GB"

      username  = "kube"
      userpass  = "$y$j9T$FEkVuTF5qJOL0zHn2GBiz1$VkCWUrsGFAmWLWeyZsjYMoG31bgRZkFns2bJLzHN1r8"
    },
    {
      name      = "pnode2"
      fqdn      = "pnode2.psilva.org" 
      ip        = "192.168.49.204"
      cpu       = 4
      mem       = "4GB"
      disk      = "11GB"

      username  = "kube"
      userpass  = "$y$j9T$FEkVuTF5qJOL0zHn2GBiz1$VkCWUrsGFAmWLWeyZsjYMoG31bgRZkFns2bJLzHN1r8"
    }
    ,
    {
      name      = "pnode3"
      fqdn      = "pnode3.psilva.org" 
      ip        = "192.168.49.205"
      cpu       = 8
      mem       = "6GB"
      disk      = "11GB"

      username  = "kube"
      userpass  = "$y$j9T$FEkVuTF5qJOL0zHn2GBiz1$VkCWUrsGFAmWLWeyZsjYMoG31bgRZkFns2bJLzHN1r8"
    }
]
}