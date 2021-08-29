sudo docker run -d --restart unless-stopped --name minecraft_server  \
  -e EULA=TRUE \
  -v /docker_data/minecraft/data?:/data \
  -p 25565:25565 \
  itzg/minecraft-server:latest
