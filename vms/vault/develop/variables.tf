// export TF_VAR_lxc_password='abc123'
variable lxc_password {
    type = string
}

variable "containers" {
  type = list(map(string))
  default = [
    {
      name      = "vault"
      fqdn      = "vault.dev.psilva.org" 
      ip        = "192.168.51.198"
      cpu       = 2
      mem       = "1GB"

      username  = "vault"
      userpass  = "$y$j9T$tLmh7sHw/TxSQMYJ/tipx.$SBHx4b03mJKdr8KW8EwjaLPp1lSuS.PnfVU3.gnyrT5"
    }
]
}