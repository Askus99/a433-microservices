#!/bin/bash

#Shell Script Build Docker Image

echo $(date)
echo -e
echo "BUILD IMAGE"
echo -e
sleep 1
docker build -t item-app:v1 .
echo -e
docker images
echo -e
docker tag item-app:v1 askus/item-app:v1
echo -e
docker images
echo -e
echo "LOGIN DOCKER"
echo -e
echo $PASSWORD_DOCKER_HUB | docker login -u askus --password-stdin
echo -e
echo "PUSH DOCKER"
echo -e
docker push askus/item-app:v1
echo -e
echo "SUKSES"
