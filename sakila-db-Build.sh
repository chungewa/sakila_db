#! /bin/bash

# Maintain Jason (run sakila DB)

echo "**************Pls confirm there is no container id "db" by "docker ps -a" command on your host, or you have to delete the origine container******"

# Run the mysql container and create the sakila database

echo "Starting the database for AppD Application on container: db..."
docker run -d --name db -e MYSQL_ROOT_PASSWORD="rootpass" mysql:5

echo "sleeping 30 seconds,haaaaaa"
sleep 30
docker exec -i db mysql -u root -prootpass < ./setup.sql

echo "sleeping 10 seconds, haaaa"
sleep 10
docker exec -i db mysql -u root -prootpass < ./cleanup.sql


