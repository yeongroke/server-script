docker pull postgres:13.0

docker run -i --rm postgres cat /usr/share/postgresql/postgresql.conf.sample > my-postgres.conf

sudo mkdir -p /docker_data/postgresql/config
sudo mv my-postgres.conf /docker_data/postgresql/config

# 	--network postgres-net \
docker run -d --restart unless-stopped --name postgresql -p 5432:5432 \
  -e TZ=Asia/Seoul \
	-v /docker_data/postgresql/data:/var/lib/postgresql/data \
	-v /docker_data/postgresql/config:/etc/postgresql/config \
	-e POSTGRES_USER= \
	-e POSTGRES_PASSWORD= \
	postgres:13.0 \
	-c 'config_file=/etc/postgresql/config/my-postgres.conf' \
  -c shared_buffers=10240MB \
  -c max_connections=2096 \
  -c wal_buffers=512MB \
  -c effective_cache_size=20480MB
