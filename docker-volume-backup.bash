D:\Development\DOCKER\belajar-docker-dasar\backup

docker container stop mongo-volume

docker container create --name mongo-backup --mount "type=bind,source=D:\Development\DOCKER\belajar-docker-dasar\backup,destination=/backup" --mount "type=volume,source=mongo-database,destination=/data" mongo:latest
 
docker container start mongo-backup

docker container exec -i -t mongo-backup /bin/bash

tar cvf /backup/backup.tar.gz /data

docker container stop mongo-backup

docker container rm mongo-backup

docker container start mongo-volume

image pull ubuntu:latest

docker container run  --rm ubuntu --mount "type=bind,source=D:\Development\DOCKER\belajar-docker-dasar\backup,destination=/backup" --mount "type=volume,source=mongo-database,destination=/data" ubuntu:latest tar cvf /backup/backup.tar.gz /data

docker container stop mongo-volume

docker container ls -a

docker container start mongo-volume

docker container ls -a