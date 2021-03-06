#! /usr/bin/env bash

sudo yum install -y ntp

sudo yum install -y nano

sudo systemctl enable ntpd && sudo systemctl start ntpd

sudo curl -fsSL https://get.docker.com/ | sh

sudo systemctl enable docker.service

sudo usermod -aG docker vagrant

sudo systemctl start docker

wget https://storage.googleapis.com/kubernetes-release/release/v1.4.4/bin/linux/amd64/kubectl

chmod +x kubectl

sudo mv kubectl /usr/local/bin/kubectl

kubectl --kubeconfig /vagrant/admin.conf proxy &


