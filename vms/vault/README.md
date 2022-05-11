# Vault Server

```bash
export ANSIBLE_CONFIG=lib/ansible/ansible.cfg

#DEV
ansible-playbook -i lib/ansible/dev-inventory.yml  vms/vault/vault-config-ans.yml --extra-vars "vars_file=dev_vars.yml"
#PROD
ansible-playbook -i lib/ansible/prod-inventory.yml  vms/vault/vault-config-ans.yml --extra-vars "vars_file=prod_vars.yml"
```


`vault -autocomplete-install`

## Prepring Vault
```bash
export VAULT_ADDR=https://vault.psilva.org:8200/
export VAULT_TOKEN= <TOKEN>
vault operator init --key-shares=3 --key-threshold=2

vault operator unseal
vault audit enable file file_path=/opt/vault/data/mount/vault_audit.log
vault auth enable userpass
vault secrets enable kv


vault policy write <POLICY_NAME> <POLICY_FILE>
vault write identity/entity name=
192.168.50.1/22
```

