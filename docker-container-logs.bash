docker container create --name webserver-nginx nginx:latest

docker container start webserver-nginx

docker container logs webserver-nginx

docker container logs -f webserver-nginx