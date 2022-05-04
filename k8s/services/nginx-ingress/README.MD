```
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.2/deploy/static/provider/cloud/deploy.yaml
kubectl -n ingress-nginx patch svc ingress-nginx-controller -p '{"spec": {"loadBalancerIP": "192.168.49.149"}}'


```

