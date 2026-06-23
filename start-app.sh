#!/bin/bash

echo "Starting application..."

docker run -d --name mysql-db --network app-network --restart unless-stopped -e MYSQL_ROOT_PASSWORD=root123 -e MYSQL_DATABASE=mydb -v mysql-data:/var/lib/mysql -p 3306:3306 mysql:8

docker run -d --name web-server --network app-network --restart unless-stopped -p 8080:80 nginx

echo "Application is available at http://localhost:8080"