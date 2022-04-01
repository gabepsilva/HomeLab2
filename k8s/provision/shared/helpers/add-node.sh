NODE_CMD="kubeadm join kloadbalancer1.psilva.org:6443 --token 2pwp17.uqozs3am9lg9vxn9 \
	--discovery-token-ca-cert-hash sha256:df66188a3c2f88aefb0d569e6fa99d9e258a6f479eef0b1fd9c101883a383fa1"


ssh -o "StrictHostKeyChecking=no" kube@knode1.psilva.org "sudo $NODE_CMD"