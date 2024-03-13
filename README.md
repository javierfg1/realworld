## Creación imagen partir de un Dockerfile que usa la imagen oficial de Bun

```
docker build -t javierfg1/realworld-htmx  .
```

# Ejecución y prueba de un contenedor basado en la imagen creada

```
docker run -d -p 3000:3000 javierfg1/realworld-htmx
```
Para probar la aplicación, ejecutar "curl http://localhost:3000" desde la línea de comandos o "http://localhost:3000" desde un navegador local.
```

# Guardamos la imagen en DockerHub: https://hub.docker.com/repository/docker/javierfg1/realworld-htmx/general

```
docker push javierfg1/realworld-htmx:latest
```

# Ejecución y prueba de un contenedor basado en la imagen creada

We are using minicube to play with our new image in k8s, to install minicube follow next [link](https://minikube.sigs.k8s.io/docs/start/)

After minikube installation, we are ready to start a cluster executing 

```
minikube start
```

- To execute our yaml files we need to get the source, so we can clone the project and go to the folder of the project "cd realworld"

```
git clone https://github.com/javierfg1/realworld.git
```

- Now we can execute the comand to deploy our image in the container, but 

```
kubectl apply -f realworld-deployment.yml
```

- To check the deployments

```
kubectl get deployments
```

- Execute the service

```
kubectl apply -f realworld-service.yml
```

- To check the services

```
kubectl get services
```

- Finally we can execute the minikube command to expose the service, it will automatically open the browser to see the result

```
minikube service realworld-htmx-service
```

- Cleaning up the K8s

After the testing of our exercice we will want to cleaning up all, following next steps the environment will be remain clear.

- Delete the service

```
kubectl delete service realworld-htmx-service
```

- Delete the deployment

```
kubectl delete deployment realworld-htmx-deployment
```

- Delete all of the minikube clusters

```
minikube delete --all
```

A special reagards for **hesxenon**, for helping us to learn using their **realworld-htmx** application.
And another specila mention to **minikube**, they are helping to learn how to work with k8s.
