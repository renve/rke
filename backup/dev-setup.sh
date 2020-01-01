#!/bin/bash
sudo apt-get update -y

sleep 30

# install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.5/bin/linux/amd64/kubectl
chmod 755 kubectl
mv kubectl /usr/local/bin/kubectl

# install docker
sudo apt-get install docker.io -y

# install rke
wget https://github.com/rancher/rke/releases/download/v0.3.2/rke_linux-amd64

chmod 755 rke*
mv rke* /usr/local/bin/rke

# install helm3
https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz
tar -zxf helm*

mv linux-amd64/helm /usr/local/bin/helm


