terraform { 
  backend "gcs" {
      bucket = "homelab2"
      prefix  = "dev"
  }
}

module "lxd_prod_provision" {
    source = "../../../lib/terraform/modules/lxcd"
  
    lxc_password = var.lxc_password
    containers = var.containers
}
