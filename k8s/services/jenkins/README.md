# Installing Jenkins in K8S Cluster

#### Build your own worker image

```bash
cd k8s/services/jenkins/manifests/worker-images
docker build -t gasilva-clgx/jnlp-slave .
docker push
```


#### Run the deployments in this order

```bash
kubectl apply -f k8s/services/manifests/jenkins/rbac.yaml
kubectl apply -f k8s/services/manifests/jenkins/pvc.yaml
kubectl apply -f k8s/services/manifests/jenkins/deployment.yaml
kubectl apply -f k8s/services/manifests/jenkins/loadBalancer.yaml
```

#### Get the initial Jenkins secret:

```bash
kubectl logs $(kubectl get pods -n jenkins -o=jsonpath='{.items[0].metadata.name}') -n jenkins
```


#### References
https://www.youtube.com/watch?v=eRWIJGF3Y2g


What's next?

* deploy services
* health checks