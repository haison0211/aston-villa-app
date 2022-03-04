#!/bin/bash

echo  "***********************"
echo  "******Pushing img *****"

echo "****Logging docker hub ****"
echo "pass is" $PASS
docker login -u haison123 -p $PASS
echo "***Tagging image***"
docker tag $IMAGE_NAME:$IMAGE_VERSION haison123/$IMAGE_NAME:$IMAGE_VERSION
echo "***Push image****"
docker push haison123/$IMAGE_NAME:$IMAGE_VERSION
docker images

