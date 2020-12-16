#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`
# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
#final:latest
dockerpath="c8cd1e3e3f8b"
# Step 2:
# Authenticate & tag
##docker tag {image ID number} yourhubusername/{name_of_your_choice]:firsttry
docker login --username "sudarshanas"
docker tag c8cd1e3e3f8b sudarshanas/udaproj5:latest
echo "Docker ID and Image: $dockerpath"
# Step 3:docker push $dockerpath
# Push image to a docker repository
docker image push sudarshanas/udaproj5:latest