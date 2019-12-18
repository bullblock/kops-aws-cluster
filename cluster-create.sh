#1/bin/sh
kops create cluster \
    --admin-access=0.0.0.0/0 \
    --api-loadbalancer-type=public \
    --api-ssl-certificate='arn:aws:acm:ap-southeast-1:329193457145:certificate/d9090b07-5cb8-43b9-a0dd-d47e795b60d5' \
    --associate-public-ip=true \
    --authorization=RBAC \
    --bastion \
    --channel=stable \
    --cloud=aws \
    --cloud-labels="demo=kops" \
    --dns=public \
    --dns-zone=k8s.island.dev.srcd.io \
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
    --state=s3://kops.k8s.island.dev.srcd.io \
    --name=cluster.k8s.island.dev.srcd.io \
    --yes
#   --disable-subnet-tags \
#   --dry-run \
#   --kubernetes-version=1.17.0 \
#   --etcd-storage-type \
#   --image \
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
