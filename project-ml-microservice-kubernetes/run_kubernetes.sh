#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="sudarshanas/finalenv"
sudo docker login --username "sudarshanas"
# Step 2
# Run the Docker Hub container with kubernetes
sudo kubectl create deployment finalenv --image=$dockerpath
# Step 3:
# List kubernetes pods
sudo kubectl get pods --all-namespaces
# Step 4:
# Forward the container port to a host
sudo kubectl expose deployment finalenv --type="Nodeport" --port=3001
sudo kubectl port-forward deployment/finalenv 3001:8001
