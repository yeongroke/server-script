#!/bin/bash

docker pull prom/node-exporter:v0.18.0

docker run -d --restart unless-stopped --name prometheus_node_exporter \
-p 9100:9100 \
-e TZ=Asia/Seoul \
prom/node-exporter:v0.18.0
