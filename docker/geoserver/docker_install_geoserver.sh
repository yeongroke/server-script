sudo docker volume create geoserver_home

sudo docker run -d --restart unless-stopped --name geoserver \
        -e TZ=Asia/Seoul \
        -e SAMPLE_DATA=true \
        -e GEOSERVER_ADMIN_USER='selabdev' \
        -e GEOSERVER_ADMIN_PASSWORD='qhdkscjfwj!@' \
        --link postgis_db:postgis_db \
        -v geoserver_home:/opt/geoserver/data_dir \
        -p 8083:8080 \
        kartoza/geoserver:2.19.2
