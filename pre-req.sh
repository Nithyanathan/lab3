#!/bin/bash

echo " installing wget on Linux"
yum install -y wget

echo "installing packer for linux"
wget  https://releases.hashicorp.com/packer/1.3.2/packer_1.3.2_linux_amd64.zip
unzip packer_1.3.2_linux_amd64.zip
mv packer /usr/local/bin/packer

echo "installing terrafrom for Linux"
wget https://releases.hashicorp.com/terraform/0.11.10/terraform_0.11.10_linux_amd64.zip
unzip terraform_0.11.10_linux_amd64.zip
mv terraform /usr/local/bin/terraform
echo " installing git for Linux"

sudo yum install -y https://centos7.iuscommunity.org/ius-release.rpm

sudo yum install  git2u-all  -y

echo "installing VSTS agent on Linux"
mkdir /home/myagent
cd /home/myagent
wget https://vstsagentpackage.azureedge.net/agent/2.146.0/vsts-agent-linux-x64-2.146.0.tar.gz
tar xivzf vsts-agent-linux-x64-2.146.0.tar.gz
./bin/installdependencies.sh
cd /home
chmod 777 myagent/ -R
cd /home/myagent
