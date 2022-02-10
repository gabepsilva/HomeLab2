# K8s Cluster (LXD containers)

# Provisioning
The playbook below will only create the container as specified in the playbook

```bash
ansible-playbook -i ansible/inventory.yml ansible/provisioners/k8s/servers.yml --extra-vars="name=kmaster1 cpus=2 mem=2GB   disk=4GB ip=192.168.50.21"
ansible-playbook -i ansible/inventory.yml ansible/provisioners/k8s/servers.yml --extra-vars="name=kmaster2 cpus=2 mem=2GB   disk=4GB ip=192.168.50.22"
ansible-playbook -i ansible/inventory.yml ansible/provisioners/k8s/servers.yml --extra-vars="name=knode1   cpus=1 mem=1GB   disk=4GB ip=192.168.50.31"
ansible-playbook -i ansible/inventory.yml ansible/provisioners/k8s/servers.yml --extra-vars="name=knode2   cpus=2 mem=2GB   disk=4GB ip=192.168.50.32"
ansible-playbook -i ansible/inventory.yml ansible/provisioners/k8s/servers.yml --extra-vars="name=knode3   cpus=4 mem=8GB   disk=4GB ip=192.168.50.33"
ansible-playbook -i ansible/inventory.yml ansible/provisioners/k8s/servers.yml --extra-vars="name=knode4   cpus=8 mem=10GB  disk=4GB ip=192.168.50.34"
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