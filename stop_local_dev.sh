#!/bin/sh

CONTAINER_NAME=jekyll-local-dev

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; 
then
  docker stop $CONTAINER_NAME
fi  
