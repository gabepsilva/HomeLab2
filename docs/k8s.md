# Downloaded metrics server from:
# https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.4.2/components.yaml
# fixed error: 'the server is currently unable to handle the request' with
# https://www.linuxsysadmins.com/service-unavailable-kubernetes-metrics/

fix: memberlist
- kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"