#!/bin/bash

echo  "***********************"
echo  "******Pushing img *****"

IMAGE="ang-project"

echo "****Logging docker hub ****"
docker login -u haison123 -p $PASS
echo "***Tagging image***"
docker tag $IMAGE haison123/$IMAGE
echo "***Push image****"
docker push haison123/$IMAGE:latest

