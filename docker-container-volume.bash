docker volume create mongo-database

docker volume ls

docker container create --name mongo-volume --publish 27019:27017 --mount "type=volume,source=mongo-database,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

docker container ls -a

docker container start

docker container ls

docker container stop mongo-volume

docker container rm mongo-volume