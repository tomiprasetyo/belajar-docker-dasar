docker pull mongo

docker container create --name mongodb --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

docker container ls -a

docker container start mongodb

docker container ls

docker container stop mongodb