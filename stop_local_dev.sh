#!/bin/sh

CONTAINER_NAME=jekyll-devcomanda-dev

if [ "$(docker ps -a -q -f name=$CONTAINER_NAME)" ]; 
then
  docker stop $CONTAINER_NAME
fi  
