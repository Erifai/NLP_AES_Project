#!/bin/sh

docker stop $(docker ps -q)
docker rm $(docker ps -a -q)
docker rmi nlp_image

sudo docker build -t nlp_image .

docker run --name nlp_project -v "$(pwd)/docker_results":/nlp_project/docker_results nlp_image


echo "fin"