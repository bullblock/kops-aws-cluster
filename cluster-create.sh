#1/bin/sh
kops create cluster \
    --admin-access=0.0.0.0/0 \
    --api-loadbalancer-type=public \
    --api-ssl-certificate='arn:aws:acm:ap-southeast-1:640428922048:certificate/4ce2c68c-3bd2-451c-8d4e-a38b595bc4bb' \
    --associate-public-ip=true \
    --authorization=RBAC \
    --bastion \
    --channel=stable \
    --cloud=aws \
    --dns=public \
    --dns-zone=rws.cna-poc.com \
    --encrypt-etcd-storage \
    --master-count=1 \
    --master-size=t2.large \
    --master-tenancy=default \
    --master-volume-size=50 \
    --master-zones="ap-southeast-1b" \
    --network-cidr=10.65.0.0/16 \
    --networking=calico \
    --node-count=3 \
    --node-size=t2.medium \
    --node-tenancy=default \
    --node-volume-size=50 \
    --ssh-access=0.0.0.0/0 \
    --ssh-public-key=~/.ssh/id_rsa.pub \
    --target=direct \
    --topology=private \
    --zones="ap-southeast-1a,ap-southeast-1b,ap-southeast-1c" \
    --state=s3://k8s.rws.cna-poc.com \
    --name=k8s.rws.cna-poc.com \
    --yes
#   --api-ssl-certificate='arn:aws:acm:ap-southeast-1:640428922048:certificate/4ce2c68c-3bd2-451c-8d4e-a38b595bc4bb' \
#   --disable-subnet-tags \
#   --dry-run \
#   --kubernetes-version=1.17.0 \
#   --etcd-storage-type \
#   --image \
#   --cloud-labels="kubernetes.io/cluster/cluster.k8s.island.dev.srcd.io=owned,KubernetesCluster=cluster.k8s.island.dev.srcd.io" \
#   --master-public-name \
#   --master-security-groups \
#   --model \
#   --node-security-groups \
#   --os-dns-servers \
#   --os-ext-net \
#   --os-ext-subnet \
#   --os-kubelet-ignore-az \
#   --os-lb-floating-subnet \
#   --os-octavia \
#   --out \
#   --output json|yaml \
#   --project \
#   --subnets \
#   --utility-subnets \
#   --vpc \
#   --yes \
