docker container create --name webserver-nginx --publish 8080:80 nginx:latest

docker container start webserver-nginx

docker container ls

docker container stop webserver-nginx