#!/bin/bash

APP=auth-app
IMAGE=$APP:local
NET=jarand-net

docker build -t $IMAGE .

docker rm -f -v $APP

docker network create $NET || true

docker run -dt --name $APP -p 8040:8080 --network $NET \
  $IMAGE
