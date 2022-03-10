# Provisioning the clusters

This folder will provision a K8s cluster in many different vms inside a LXD cluster.

## GCP setup 

My home lab runs will win 95% of my workload on-prem, and Google Cloud will be usead as backup, even scaling up infrastructure when my infra goes down (power outage of home accidents)

* [Create a project](https://cloud.google.com/resource-manager/docs/creating-managing-projects) (top3tier-1)
* Login into GCP console and [link the new project with a biling account](https://cloud.google.com/billing/docs/how-to/manage-billing-account).
* [Create a service account](https://cloud.google.com/iam/docs/service-accounts) to manage the resources. (top3tier@top3tier-1.iam.gserviceaccount.com)
* [In the IAM page](https://console.cloud.google.com/iam-admin/iam) Assign this SA the role of *editor*: roles/editor
* [Generate and download a json key](https://cloud.google.com/iam/docs/creating-managing-service-account-keys#iam-service-account-keys-create-console) for that service account (top3tier-1-8a979d4c79d6.json)


## Terraforming

Preping...
```bash
# password for LXD api servive
export TF_VAR_lxc_password=123
# GCP cloud storage to secure all Terraform state files
export GOOGLE_APPLICATION_CREDENTIALS=</path/to/key.json>
```

Installing...
```bash 
cd k8s/provision/terraform
terraform init
terraform plan
terraform apply --auto-approve
```

## Ansible setup

Terraform just provisioned raw 'servers' now we need to transform those into K8s cluster nodes.

Good thing the Terraform scripts already copied my personal public key inside the `$HOME/.ssh/authorized_keys` file in each  server

Preping...
```bash
export ANSIBLE_CONFIG=ansible-files/ansible.cfg
```

Running...
```bash
# cd to the root folder of the project after applying Terraform
cd ../../..
ansible-playbook  k8s/provision/ansible/k8s-cluster.yml
```

#### Whats next?

-  [Deploy services](../services/README.md)





