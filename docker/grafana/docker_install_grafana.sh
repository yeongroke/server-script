#!/bin/bash

docker pull grafana/grafana:6.6.0-ubuntu

docker volume create grafana-storage

docker run -d --restart unless-stopped -p 3000:3000 --name grafana \
-v grafana-storage:/var/lib/grafana \
-e TZ=Asia/Seoul \
grafana/grafana:6.6.0-ubuntu

