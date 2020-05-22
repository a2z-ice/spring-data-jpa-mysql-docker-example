#/E/SP/docker/mysql/data:/var/lib/mysql
  #--restart=always \

# Without mount
docker run --detach --name=mysql_5_7 \
  --restart=always \
  -p 52001:3306  --env="MYSQL_ROOT_PASSWORD=123456" mysql:5.7

# With mount
docker run --detach --name=mysql_5_7 \
--restart=always \
--volume=/Volumes/MacData/docker-data/mysql-data:/var/lib/mysql \
-p 52001:3306  --env="MYSQL_ROOT_PASSWORD=123456" mysql:5.7


# application

docker run --detach --name=spring-data-jpa \
--restart=always \
-p 8080:8080 spring-data-jpa

# docker build 
docker build -t spring-data-jpa -f alpine-java.Dockerfile .

# docker change tag
docker logs spring-data-jpa -f

# show running containers
docker ps

# show all contianers 
docker ps -a

# stop container
docker stop contaiern_id/name

# docker remove container
docker rm container_id/name

# docker remove container by force
docker rm container_id/name -f


# show images
docker images

# remote image
docker rmi image_id

# docker logs
docker logs -f container_id/name

# docker-compose up
docker-compose -f docker-compose.yaml up -d

# ssh to docker container 
docker exec -it container_id/name sh <== cmd sh or bin/bash


