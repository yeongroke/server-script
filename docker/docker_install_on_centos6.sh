#!/bin/bash

yum clean all
wget https://get.docker.com/rpm/1.7.1/centos-6/RPMS/x86_64/docker-engine-1.7.1-1.el6.x86_64.rpm
yum install -y docker-engine-1.7.1-1.el6.x86_64.rpm
service docker restart

chkconfig --add docker
#systemctl start docker
#systemctl enable docker

#groupadd docker
#usermod -aG docker 계정
#newgrp docker

#service docker stop
#rm -rf /var/lib/docker
#service docker start
