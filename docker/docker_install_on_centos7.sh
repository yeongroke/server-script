#!/bin/bash

# centos 7 version

echo "yum -y update"

echo "yum -y install docker docekr-registry"

echo "systemctl enable docker.service"

echo "systemctl start docker.service"

echo "docker pull centos"

echo "docker run -i -t centos /bin/bash
