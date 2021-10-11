#!/bin/bash
export IMAGE=$(sed -n '1p' /tmp/.auth)
export PASS=$(sed -n '3p' /tmp/.auth)

docker login -u haison123 -p $PASS
cd /home/ubuntu/maven && docker-compose -f docker-compose-ang.yml up -d

