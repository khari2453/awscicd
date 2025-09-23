#!/bin/bash
set -e

docker pull harikumar1997/simple-python-flask-app
echo

docker run -d -p 5000:5000 harikumar1997/simple-python-flask-app
echo
