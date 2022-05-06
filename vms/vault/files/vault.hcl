# Full configuration options can be found at https://www.vaultproject.io/docs/configuration

disable_cache = true
disable_mlock = true
ui = true

listener "tcp" {
    address          = "0.0.0.0:8200"
    tls_disable      = 1
    
}
storage "file" {
    path  = "/opt/vault/data"
    tls_cert_file = "/opt/vault/tls/cert.pem"
    tls_key_file  = "/opt/vault/tls/key.pem"

   
 }

api_addr         = "http://0.0.0.0:8200"
max_lease_ttl         = "10h"
default_lease_ttl    = "10h"
cluster_name         = "vault"
raw_storage_endpoint     = true
disable_sealwrap     = true
disable_printable_check = true