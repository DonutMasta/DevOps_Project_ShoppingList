#!/bin/bash
echo "This is the run command"
docker container stop shoppinglist-container-test || true
docker container rm shoppinglist-container-test || true
docker image rm 10.0.40.160:5000/shoppinglist/test:0.0.3|| true
docker pull 10.0.40.160:5000/shoppinglist/test:0.0.3  
docker run --platform linux/amd64 -d -p 8083:80 --name shoppinglist-container-test 10.0.40.160:5000/shoppinglist/test:0.0.3