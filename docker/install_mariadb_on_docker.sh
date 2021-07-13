#!/bin/bash

docker pull mariadb:10.4

docker run -d --restart unless-stopped \
  -e TZ=Asia/Seoul \
  --name docker_mariadb \
  -p 3306:3306 \
  -v /docker_data/docker_mariadb:/var/lib/mysql \
  -e MYSQL_ROOT_PASSWORD=password mariadb:10.4

sudo firewall-cmd --permanent --zone=public --add-port=3306/tcp
sudo firewall-cmd --reload
