# Docker-Compose
## VM Setup
### Instalar Docker y Git
```
sudo yum update
sudo yum install docker
sudo yum install git -y
sudo usermod -a -G docker ec2-user
newgrp docker
```

### Instalar docker-compose
```
wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)
sudo mv docker-compose-$(uname -s)-$(uname -m) /usr/local/bin/docker-compose
sudo chmod -v +x /usr/local/bin/docker-compose
```

### Iniciar Docker al bootear
```
sudo systemctl enable docker.service
sudo systemctl start docker.service
```

### Verificar instalación de Docker y docker-compose
```
docker --version
docker-compose --version
```

### Clonar repositorio de docker-compose
```
git clone https://github.com/Plus-s/Docker-Compose.git
```
