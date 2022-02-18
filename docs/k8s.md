# Downloaded metrics server from:
# https://github.com/kubernetes-sigs/metrics-server/releases/download/v0.4.2/components.yaml
# fixed error: 'the server is currently unable to handle the request' with
# https://www.linuxsysadmins.com/service-unavailable-kubernetes-metrics/

fix: memberlist
- kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

#dashboard
https://github.com/kubernetes/dashboard
https://computingforgeeks.com/create-admin-user-to-access-kubernetes-dashboard/

kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml

kubectl proxy

http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/

kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep gabe-admin | awk '{print $1}')

 Need to add dashboard to ansible instad of manual installation

 

https://kubernetes.io/docs/tasks/configure-pod-container/pull-image-private-registry/


https://medium.com/@kaueluiseng/ci-with-jenkins-and-github-in-k8s-acd9fc8b2f59