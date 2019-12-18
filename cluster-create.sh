#1/bin/sh
kops create cluster \
    --name=cluster.k8s.island.dev.srcd.io \
    --api-loadbalancer-type=public \
    --associate-public-ip=true \
    --authorization=RBAC \
    --bastion \
    --channel=stable \
    --cloud=aws \
    --dns=public \
    --dns-zone=k8s.island.dev.srcd.io \
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
    --ssh-public-key=~/.ssh/id_rsa.pub \
    --topology=private \
    --zones="ap-southeast-1a,ap-southeast-1b,ap-southeast-1c" \
    --state=s3://kops.k8s.island.dev.srcd.io \

