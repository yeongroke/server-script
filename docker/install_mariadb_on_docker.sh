docker run -d 
  --restart="always" 
  --name docker_mariadb 
  -p 3307:3306 
  -v 
    ${dbdata}:/var/lib/mysql 
  -v 
    ${mylocation}:/etc/mysql/my.cnf 
  -e MYSQL_ROOT_PASSWORD=${password}
  mariadb:10.4
