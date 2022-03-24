### Metrics server

**Installing**
```bash
kubectl apply -f k8s/monitoring/metrics-server.yaml
```

### Prometheus

https://github.com/prometheus-operator/kube-prometheus#Quickstart



```bash
git clone https://github.com/prometheus-operator/kube-prometheus.git /tmp/monitoring

# Create the namespace and CRDs
kubectl apply --server-side -f /tmp/monitoring/manifests/setup
# wait for them to be available before creating the remaining resources
kubectl apply -f /tmp/monitoring/manifests
```


### Prometheus Protected Ingress

```bash
# create the secret locally
htpasswd -cb auth gabriel <password here>
# adding secret to kubernetes
kubectl create secret generic basic-auth --from-file=auth -n monitoring
# Create the ingress
kubectl apply -f k8s/monitoring/ingress_prometheous.yml
```


### Grafana Ingress

```bash
kubectl apply -f k8s/monitoring/ingress_grafana.yml
```

### Grafana default cred    entials:
user: admin
pass: prom-operator