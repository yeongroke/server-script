sudo docker run -d --restart unless-stopped --name postgis_db \
        -e TZ=Asia/Seoul \
        -e DEFAULT_ENCODING='UTF8' \
        -e POSTGRES_USER=selabdev \
        -e POSTGRES_PASSWORD=qhdkscjfwj\!@ \
        -v /docker_data/geoserver/postgis_data:/var/lib/postgresql \
        -v /docker_data/geoserver/postgis_config:/etc/postgresql/config \
        -p 5434:5432 \
        kartoza/postgis:13
