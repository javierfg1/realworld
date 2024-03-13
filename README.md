## Creación imagen a partir de Dockerfile que usa la imagen oficial de Bun

```
docker build -t javierfg1/realworld-htmx  .
```

## Ejecución y prueba de un contenedor basado en la imagen creada

```
docker run -d -p 3000:3000 javierfg1/realworld-htmx
```
Para probar la aplicación, ejecutar "curl http://localhost:3000" desde la línea de comandos o "http://localhost:3000" desde un navegador local

## Guardamos la imagen en DockerHub

https://hub.docker.com/repository/docker/javierfg1/realworld-htmx/general

```
docker push javierfg1/realworld-htmx:latest
```

## Instalación e inicio de Minikube 

Instalar Minukube siguiendo los pasos del sigueinte enlace https://minikube.sigs.k8s.io/docs/start/

Iniciar la ejecución de un cluster

```
minikube start
```

## Clonamos el repositorio git en una carpeta local 

```
git clone https://github.com/javierfg1/realworld.git
```

## Desde la carpeta local, desplegamos la aplicación  

```
kubectl apply -f realworld-deployment.yml
kubectl get deployments
```

## Desde la carpeta local, creamos un servicio y lo exponemos  

```
kubectl apply -f realworld-service.yml
kubectl get services
minikube service realworld-htmx-service
```

## Borrar servicio, deployment y cluster minikube

```
kubectl delete service realworld-htmx-service
kubectl delete deployment realworld-htmx-deployment
minikube delete --all
```
