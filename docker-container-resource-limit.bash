docker container create --name limit-mongodb --publish 27018:27017 --memory 1g --cpus 2 mongo:latest

docker container ls -a

docker container start limit-mongodb

docker container ls

docker container stats