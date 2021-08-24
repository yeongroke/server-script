#!/bin/bash

docker volume create pgadmin4

docker run -d --restart unless-stopped --name pgadmin \
  -e TZ=Asia/Seoul \
  -p 80:80 \
  -e 'PGADMIN_DEFAULT_EMAIL=user' \
  -e 'PGADMIN_DEFAULT_PASSWORD=password' \
  -v pgadmin4:/var/lib/pgadmin \
  dpage/pgadmin4:4.27
  
  
  
  
  
  
  
