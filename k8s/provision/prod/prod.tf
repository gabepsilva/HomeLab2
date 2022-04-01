terraform { 
  backend "gcs" {
      bucket = "homelab2"
      prefix  = "prod"
  }
}

module "lxd_prod_provision" {
    source = "../shared/terraform/modules/lxcd"
  
    lxc_password = var.lxc_password
    containers = var.containers
}
