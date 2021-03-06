#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
dockerpath="sudarshanas/udaproj5"
# Step 1:
# Build image and add a descriptive tag
docker build -t $dockerpath .
# Step 2: 
# List docker images
docker image ls
# Step 3: 
# Run flask app
#sudo docker run -p 8001:81 -it final bash
docker run -p 81:8000 $dockerpath
