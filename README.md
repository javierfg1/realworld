# Dockerize Bun app and deploy in K8s
Create an image of a bun application and deploy in K8s

## Docker image
We need docker in our system, next [link](https://docs.docker.com/get-docker/) indicates how to proceed to install.

The **Dockerfile** of this repository contain the detail to generate the image.

```
docker build -t javierfg1/realworld-htmx  .
```

Now, we have created the image in our system and we can validate how it looks like executing next:

```
docker run -d -p 3000:3000 javierfg1/realworld-htmx
```
In a browser or executing curl, we can see the application running in localhost:3000

Once the image is validated we share it in the DockerHub platform, so we will push the image with next command:

```
docker push javierfg1/realworld-htmx:latest
```

## K8s 
We are using minicube to play with our new image in k8s, to install minicube follow next [link](https://minikube.sigs.k8s.io/docs/start/)

After minikube installation, we are ready to start a cluster executing 

```
minikube start
```

- Alternatively, minikube can download the appropriate version of kubectl and you should be able to use it like this 

```
minikube kubectl -- get po -A
```

- Initially, some services such as the storage-provisioner, may not yet be in a Running state. This is a normal condition during cluster bring-up, and will resolve itself momentarily. For additional insight into your cluster state, minikube bundles the Kubernetes Dashboard, allowing you to get easily acclimated to your new environment:

```
minikube dashboard
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
