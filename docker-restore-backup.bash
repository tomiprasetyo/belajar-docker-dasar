docker volume create mongo-restore

docker container run  --rm ubuntu-restore --mount "type=bind,source=D:\Development\DOCKER\belajar-docker-dasar\backup,destination=/backup" --mount "type=volume,source=mongo-restore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"
