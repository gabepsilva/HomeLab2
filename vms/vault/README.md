# Vault Server

```bash
export ANSIBLE_CONFIG=lib/ansible/ansible.cfg

#DEV
ansible-playbook -i lib/ansible/dev-inventory.yml  vms/vault/vault-config-ans.yml
```



/usr/bin/vault server -config=/etc/vault.d/vault.hcl

systemctl daemon-reload
systemctl start vault
systemctl enable vault
systemctl status vault