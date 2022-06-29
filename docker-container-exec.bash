docker pull redis:latest

docker container create --name redis redis:latest

docker container start redis

docker container exec -i -t redis /bin/bash