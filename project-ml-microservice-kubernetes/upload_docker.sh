#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`
# Step 1:
# Create dockerpath
dockerpath="sudarshanas/udaproj5:latest"
imageid="2fdefbb21d52"
username="sudarshanas"
# Step 2:
# Authenticate & tag
##docker tag {mage ID number} yourhubusername/{name_of_your_choice]:firsttry
docker login --username $username
docker tag $imageid $dockerpath
echo "Docker ID and Image: $dockerpath"
# Step 3:docker push $dockerpath
# Push image to a docker repository
docker image push $dockerpath
