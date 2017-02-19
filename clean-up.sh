#!/bin/bash

docker ps 
container_uuid=`docker ps -a | grep revealjsdocker_revealjs | awk '{ print $1 }'`
docker stop $container_uuid
docker rm $container_uuid
image_uuid=`docker images | grep revealjsdocker_revealjs | awk '{ print $3 }'`
docker rmi $image_uuid

