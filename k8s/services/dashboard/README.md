# Kubernetes Dashboard

### Installing

```bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.1/aio/deploy/recommended.yaml
```

### Authentication

**1 - Create an user with the proper permissions**
```bash
kubectl apply -f k8s/services/dashboard/admin-rbac.yml
```

**2 - Get the access token**
```bash
# The command below was customized to use the sa created in the step above
kubectl -n kube-system get secret $(kubectl -n kube-system get sa/gabe-admin -o jsonpath="{.secrets[0].name}") -o go-template="{{.data.token | base64decode}}"
```



### Access
```bash
kubectl proxy
```
Now access the Dashboard from:
http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy/






### Reference:
https://github.com/kubernetes/dashboard

