#!/bin/sh
IMAGE=jenkins_slave
docker login
docker tag $IMAGE tzutalin/$IMAGE
docker push tzutalin/$IMAGE
