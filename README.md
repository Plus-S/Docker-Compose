# Repositorio Docker-compose Plus-S
## VM Setup
### Descargar e instalar componentes necesarios

+ Copiar contenido de vm-initialization.sh al portapapeles.
+ Abrimos el editor de texto nano:
```
sudo nano vm-initialization.sh
```
+ Pegamos el contenido en ese archivo, y guardamos. (CTRL + X, Y, ENTER)
+ Hacemos que el archivo sea ejecutable:
```
chmod +x vm-initialization.sh
```

## Agregar credenciales de GitHub y Github Containers (Docker)
### Iniciar sesión en Github
Ejecutar el siguiente comando, seleccionando GitHub.com, y acceso con token.
```
gh auth login
```

### Iniciar sesión en el registro de contenedores de GitHub
```
export CR_PAT=GITHUB_TOKEN
echo $CR_PAT | docker login ghcr.io -u GITHUB_USERNAME --password-stdin
> Login Succeeded
```

### Clonar repositorio con Docker-compose
```
git clone https://github.com/Plus-S/Docker-Compose.git
```
## Iniciar Docker Container
### Ir a la carpeta donde se encuentra docker-compose.yml
```
cd Docker-Compose/
```
### Iniciar contenedor
```
docker-compose up -d
```
