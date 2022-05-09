# Installing Jenkins in K8S Cluster

#### Build your own worker image

```bash
cd k8s/services/jenkins/manifests/worker-images
docker build -t gasilva-clgx/jnlp-slave .
docker push
```


#### Run the deployment

```bash
kubectl apply -f k8s/services/jenkins/manifests/prod .
```

#### Enable SSL

*Create the certificate with certbot first*
-- ADD REF LATER

```bash
# SETUP KEYSTORE.JKS
# I dont like this because it exposes the keytore password inside jenkins master container, but it is what I got working so far.
---
apiVersion: v1
kind: ConfigMap
metadata:
  name: jenkins
  namespace: jenkins
data:
    jenkins_opts: --httpsPort=8443 --httpsKeyStore=/var/lib/jenkins/keystore.jks --httpsKeyStorePassword=changeit #--httpPort=-1
###

sudo cp -r /etc/letsencrypt/archive/ /tmp
sudo chown -R ${USER} /tmp/archive
cd /tmp/archive/psilva.org
cat fullchain1.pem privkey1.pem > fullchain.pem

# leave the passwords empty on the below
openssl pkcs12 -export -out pkcs.p12 -in fullchain.pem -inkey privkey1.pem -name keybin

# set the keystore password
keytool -importkeystore -deststorepass 'pass' -destkeypass 'pass' -destkeystore keystore.jks -srckeystore pkcs.p12 -srcstoretype PKCS12 -srcstorepass '' -alias keybin

# create the secret in K8s
kubectl -n jenkins create secret generic jenkins-jks --from-file=/tmp/archive/psilva.org/keystore.jks --from-literal=passw='fake'

# DEBUG: Open the keystore (pass needed)
keytool -list -v -keystore keystore.jks #
```

#### Get the Jenkins initial secret:

```bash
kubectl logs $(kubectl get pods -n jenkins -o=jsonpath='{.items[0].metadata.name}') -n jenkins
```


#### References
https://www.youtube.com/watch?v=eRWIJGF3Y2g


What's next?

* deploy services
* health checks