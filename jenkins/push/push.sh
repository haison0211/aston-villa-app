#!/bin/bash

echo  "***********************"
echo  "******Pushing img *****"

echo "****Logging docker hub ****"
echo "pass is" $PASS
docker login -u haison123 -p $PASS
echo "***Tagging image***"
docker tag $IMAGE_NAME:$IMAGE_VERSION haison123/$IMAGE_NAME:$IMAGE_VERSION
echo "***Push image****"
rm -rf ~/.dockercfg ~/.docker/config.json
aws ecr get-login-password --region ap-east-1 | docker login --username AWS --password-stdin 179623033511.dkr.ecr.ap-east-1.amazonaws.com
docker tag $IMAGE_NAME:$IMAGE_VERSION 179623033511.dkr.ecr.ap-east-1.amazonaws.com/$IMAGE_NAME:$IMAGE_VERSION
docker push 179623033511.dkr.ecr.ap-east-1.amazonaws.com/$IMAGE_NAME:$IMAGE_VERSION
