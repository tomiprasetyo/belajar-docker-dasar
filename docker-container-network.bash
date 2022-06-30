docker network create --driver bridge mongo-network

docker network ls

docker container create --name mongodb --network mongo-network --env MONGO_INITDB_ROOT_USERNAME=root --env MONGO_INITDB_ROOT_PASSWORD=root mongo:latest

docker container ls -a

docker image pull mongo-express:latest

docker container ls -a

docker container create --name mongodb-express --network mongo-network --publish 8081:8081 ME_CONFIG_MONGODB_URL="mongodb://root:root@mongodb:27017/" mongo-express:latest

docker container start mongodb

docker container start mongodb-express

docker network ls

docker container ls

docker network disconnect mongo-network mongodb

docker network ls

docker network connect mongo-network mongodb