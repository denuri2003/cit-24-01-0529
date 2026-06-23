#!/bin/bash

docker rm -f web-server
docker rm -f mysql-db

docker network rm app-network

docker volume rm mysql-data

echo "Application removed."