#!/usr/bin/env bash

# Step 1:
# This is your Domcker ID/path
dockerpath="sudarshanas/udaproj5"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udaproj5 --image=$dockerpath --port=8000
#Step 3:
#Wait till the pod is up and running
sleep 1m
# Step 4:
# List kubernetes pods
kubectl get pods --all-namespaces
# Step 5:
#Expose the nodeport to access the service running in the pod
kubectl expose pod/udaproj5 --type="NodePort" --port=3001 --target-port=80
# Step 6:
# Forward the container port to a host
kubectl port-forward udaproj5 3001:8000
