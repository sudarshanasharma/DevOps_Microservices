#!/usr/bin/env bash

# Step 1:
# This is your Domcker ID/path
# dockerpath=<>
dockerpath="sudarshanas/udaproj5"
#docker login --username "sudarshanas"
# Step 2
# Run the Docker Hub container with kubernetes
#kubectl create deployment udaproj5 --image="sudarshanas/udaproj5" --port=8001
kubectl run udaproj5 --image="sudarshanas/udaproj5" --port=8001
# Step 3:
# List kubernetes pods
kubectl get pods --all-namespaces
# Step 4:
# Forward the container port to a host
#kubectl expose deployment udaproj5 --type="NodePort" --port=3001 --targetport=81
kubectl expose pod/udaproj5 --type="NodePort" --port=3001 --target-port=81

#kubectl port-forward deployment/udaproj5 3001:8001
kubectl port-forward udaproj5 3001:8001

