#!/bin/sh

CONTAINER_NAME=jekyll-devcomanda-dev

if [ "$(docker ps -a -q -f name=$CONTAINER_NAME)" ]; 
then
  docker rm $CONTAINER_NAME
fi  
