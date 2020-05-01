#!/bin/sh
IMAGE=py2qt4
AUTHOR=haim0n

docker login
docker tag $IMAGE $AUTHOR/$IMAGE
docker push $AUTHOR/$IMAGE
