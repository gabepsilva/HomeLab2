# Demo APPS

These are elemental apps used to test cluster's features.
The ingresses  are redundant for education purposes.

#### Dependency
APP1 depends on APP2.


# Manual deployment

**Do not forget to setup the DNS records**

```bash
kubectl -f k8s/services/demo/rest1/manifests/deployment.yml
kubectl -f k8s/services/demo/rest1/manifests/clusterIp.yml
kubectl -f k8s/services/demo/rest1/manifests/ingress-nginx.yml

kubectl -f k8s/services/demo/rest2/manifests/deployment.yml
kubectl -f k8s/services/demo/rest2/manifests/clusterIp.yml
kubectl -f k8s/services/demo/rest2/manifests/ingress-nginx.yml

k8s/services/demo/path-based-ingress.yml
```

# Manual build and deployment

```bash
docker build -t ghcr.io/gasilva-clgx/rest1:latest .
docker push ghcr.io/gasilva-clgx/rest1:latest   
```