# K8s Cluster (LXD containers)


### pre reqs
All commands should be executed from the root of this project.

Thease commands assume you have a ansible.cfg file similar to
`export ANSIBLE_CONFIG=./ansible/ansible.cfg`



# Provisioning
The playbook below will only create the container as specified in the playbook

```bash
ansible-playbook  ansible/provisioners/k8s/cluster.yml
```

In case you are recreating a server after sshed in it
```bash
ssh-keygen -R 192.168.50.21 
ssh-keygen -R 192.168.50.22
ssh-keygen -R 192.168.50.31
ssh-keygen -R 192.168.50.32
ssh-keygen -R 192.168.50.33
ssh-keygen -R 192.168.50.34
```

# Installing the server
Once the container is provisioned, this role will target the server `192.168.50.3` to install and configure Adguard Home

```bash
ANSIBLE_ROLES_PATH=./ansible/roles ansible-playbook -i ansible/inventory.yml ansible/playbooks/adguard.yml
```

# Config backup
just keep a active backup of `/app/AdGuardHome/AdGuardHome.yaml`