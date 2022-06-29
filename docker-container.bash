docker container ls -a

docker container create --name database-mysql mysql:latest

docker container create --name webserver-nginx nginx:latest

docker container start webserver

docker container stop webserver-nginx

docker container rm webserver-nginx