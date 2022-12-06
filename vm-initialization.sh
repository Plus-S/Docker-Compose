#!/bin/bash
# Update Libraries
sudo yum update -y

# Install Docker
sudo yum install docker -y

# Install Git
sudo yum install git -y

# Install GitHub CLI
wget https://github.com/cli/cli/releases/download/v2.15.0/gh_2.15.0_linux_amd64.rpm
sudo rpm -i gh_2.15.0_linux_amd64.rpm

# Make docker sudoer
sudo usermod -a -G docker ec2-user
newgrp docker

# install docker compose
wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)
sudo mv docker-compose-$(uname -s)-$(uname -m) /usr/local/bin/docker-compose
sudo chmod -v +x /usr/local/bin/docker-compose

# Make docker start on boot
sudo systemctl enable docker.service
sudo systemctl start docker.service
