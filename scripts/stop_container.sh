#!/bin/bash
#set -e

#docker stop simple-python-flask-app
#echo "Hi"

#!/bin/bash
set -e
export PATH=$PATH:/usr/bin

CONTAINER_NAME=simple-python-flask-app

if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
    echo "Stopping container $CONTAINER_NAME..."
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
else
    echo "No running container named $CONTAINER_NAME found, skipping stop."
fi

