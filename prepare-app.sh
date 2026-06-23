#!/bin/bash

echo "Preparing app..."

docker network create app-network

docker volume create mysql-data

echo "Preparation completed."