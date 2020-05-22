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
