# Adguard Home (LXD container)

# Provisioning
The playbook below will only create the container as specified in the playbook

```bash
ssh-keygen -R 192.168.50.3
ansible-playbook -i ansible/inventory.yml ansible/provisioners/adguard/adguard.yml
```

# Installing the server
Once the container is provisioned, this role will target the server `192.168.50.3` to install and configure Adguard Home

```bash
ANSIBLE_ROLES_PATH=./ansible/roles ansible-playbook -i ansible/inventory.yml ansible/playbooks/adguard.yml
```

# Config backup
just keep a active backup of `/app/AdGuardHome/AdGuardHome.yaml`