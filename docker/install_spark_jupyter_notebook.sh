#!/bin/bash
# https://hub.docker.com/r/jupyter/all-spark-notebook

# docker volume create all-spark-notebook

docker run -d --restart unless-stopped --name jupyter \
-e TZ=Asia/Seoul \
-p port:8888 \
-v all-spark-notebook:/home/jovyan/work \
-v your_directory:/home/jovyan/work/etri_sensor_data:ro \
ip_Address/jupyter/all-spark-notebook

# docker restart jupyter; docker logs -f jupyter
