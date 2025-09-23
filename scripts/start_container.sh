#!/bin/bash
#set -e

#docker pull harikumar1997/simple-python-flask-app
#echo

#docker run -d -p 5000:5000 harikumar1997/simple-python-flask-app
#echo
#!/bin/bash
set -e
export PATH=$PATH:/usr/bin

CONTAINER_NAME=simple-python-flask-app
IMAGE_NAME=harikumar1997/simple-python-flask-app

# Remove old container if exists
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
    docker rm -f $CONTAINER_NAME
fi

echo "Starting container $CONTAINER_NAME..."
docker run -d -p 5000:5000 --name $CONTAINER_NAME $IMAGE_NAME
