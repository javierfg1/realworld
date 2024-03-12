
-- ssh -A ec2-user@54.161.30.100

-- docker build realworld-htmx --pull -t realworld-htmx:latest -f Dockerfile --no-cache

-- docker run -d -p 3000:3000 realworld-htmx:latest
   
-- docker exec -ti 3085bf84ce50 /bin/sh  (PARA ENTRAR A LA LINEA DE COMANDOS DEL CONTENEDOR)

-- docker exec -ti hello /bin/sh

## Push the container

First loging into dockerhub with:

-- docker login -u   (credenciales también en /home/ec2-user/.docker)

And push it to the Docker Hub registry:

-- docker tag realworld-htmx javierfg1/realworld-htmx 
-- docker push javierfg1/realworld-htmx


