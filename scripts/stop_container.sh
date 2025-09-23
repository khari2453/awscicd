#!/bin/bash
#set -e

#docker stop simple-python-flask-app
#echo "Hi"



set -e
export PATH=$PATH:/usr/bin

CONTAINER_NAME=flaskapp

# Stop container if it exists
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping container $CONTAINER_NAME..."
    docker stop $CONTAINER_NAME || true
    docker rm $CONTAINER_NAME || true
else
    echo "No container named $CONTAINER_NAME found, skipping stop."
fi

