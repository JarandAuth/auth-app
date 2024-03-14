#!/bin/bash

APP=auth-app
IMAGE=ghcr.io/jarandauth/auth-app:main
NET=jarand-net

docker rm -f -v $APP

docker network create $NET || true

docker run -dt --name $APP -p 8040:8080 --network $NET --pull=always --restart unless-stopped \
  $IMAGE
