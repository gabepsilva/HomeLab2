# Downloaded metrics server from:
# https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.4.2/components.yaml
# fixed error: 'the server is currently unable to handle the request' with
# https://www.linuxsysadmins.com/service-unavailable-kubernetes-metrics/

fix: memberlist
- kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

#dashboard
https://github.com/kubernetes/dashboard
https://computingforgeeks.com/create-admin-user-to-access-kubernetes-dashboard/
 ** see make file to get token

 Need to add dashboard to ansible instad of manual installation

 

