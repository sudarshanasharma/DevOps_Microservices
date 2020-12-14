#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
# Assumes that an image is built via `run_docker.sh`
# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
#final:latest
dockerpath="eb76e4762e14"
# Step 2:
# Authenticate & tag
##docker tag {image ID number} yourhubusername/{name_of_your_choice]:firsttry
sudo docker login --username "sudarshanas"
sudo docker tag eb76e4762e14 sudarshanas/final:latest
echo "Docker ID and Image: $dockerpath"
# Step 3:docker push $dockerpath
# Push image to a docker repository
sudo docker image push sudarshanas/final:latest
