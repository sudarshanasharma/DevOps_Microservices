#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
sudo docker build --tag=final .
# Step 2: 
# List docker images
sudo docker image ls
# Step 3: 
# Run flask app
#sudo docker run -p 8001:81 -it final bash
sudo docker run -p 8001:81 final
