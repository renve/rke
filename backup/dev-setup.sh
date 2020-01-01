#!/bin/bash
sudo apt-get update -y

sleep 30

#sudo hostnamectl set-hostname $

# install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.15.5/bin/linux/amd64/kubectl
chmod 755 kubectl
mv kubectl /usr/local/bin/kubectl

# install docker
sudo apt-get install docker.io -y

sudo usermod -aG docker ubuntu 
# install rke
wget https://github.com/rancher/rke/releases/download/v0.3.2/rke_linux-amd64

chmod 755 rke*
sudo mv rke_linux-amd64 /usr/local/bin/rke

sudo apt-get install unzip -y

# install helm3
wget https://get.helm.sh/helm-v3.0.2-linux-amd64.tar.gz
tar -zxf helm*

sudo mv linux-amd64/helm /usr/local/bin/helm

#sudo salt-master -d
#sudo salt-minion -d
