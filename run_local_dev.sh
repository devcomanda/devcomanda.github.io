#!/bin/sh

JEKYLL_VERSION=4.0
CONTAINER_NAME=jekyll-local-dev

if [ ! "$(docker ps -a -q -f name=$CONTAINER_NAME)" ]; 
then
  docker run -it -p4000:4000 --volume="$PWD:/srv/jekyll" --name "$CONTAINER_NAME" jekyll/jekyll:$JEKYLL_VERSION jekyll serve
else
  docker start $CONTAINER_NAME
fi  
