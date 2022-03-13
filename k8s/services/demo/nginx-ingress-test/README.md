# Nginx Ingress basic test


After installing Nginx Controller
Link to k8s/provision/ansible/tasks/control-plane-setup.yml:59

## Local testing

Let's create a simple web server and the associated service:
```bash
kubectl create deployment demo --image=httpd --port=80
kubectl expose deployment demo
```
Then create an ingress resource. The following example uses an host that maps to localhost:

```bash
kubectl create ingress demo-localhost --class=nginx \
  --rule=demo.localdev.me/*=demo:80
```
Now, forward a local port to the ingress controller:
```bash
kubectl port-forward --namespace=ingress-nginx service/ingress-nginx-controller 8080:80
```

## Online testing

If your Kubernetes cluster is a "real" cluster that supports services of type LoadBalancer, it will have allocated an external IP address or FQDN to the ingress controller.

You can see that IP address or FQDN with the following command:

```bash
kubectl get service ingress-nginx-controller --namespace=ingress-nginx
```

It will be the EXTERNAL-IP field. If that field shows <pending>, this means that your Kubernetes cluster wasn't able to provision the load balancer (generally, this is because it doesn't support services of type `LoadBalancer`).

Once you have the external IP address (or FQDN), set up a DNS record pointing to it. Then you can create an ingress resource. **The following example assumes that you have set up a DNS record for www.demo.io:**

To get the Ip of your NGINX controller:
```bash
kubectl get service ingress-nginx-controller --namespace=ingress-nginx
NAME                       TYPE           CLUSTER-IP      EXTERNAL-IP     PORT(S)                      AGE
ingress-nginx-controller   LoadBalancer   10.100.210.10   192.168.50.43   80:32496/TCP,443:30907/TCP   5h46m
```

```bash
kubectl create ingress demo --class=nginx \
  --rule="www.demo.io/*=demo:80"
```

## Dumping ymls for verication

```bash
kubectl get deploy demo -o yaml > deployment.yml
kubectl get service demo -o yaml > service.yml
kubectl get ingress demo-localhost -o yaml > ingress-localhost.yml
kubectl get ingress demo -o yaml > ingress.yml
```

References
https://kubernetes.github.io/ingress-nginx/deploy/