#!/usr/bin/env bash

dockerpath=kruthigagopalan/ml

# Run the Docker Hub container with kubernetes
kubectl run --generator=run-pod/v1 --image=$dockerpath ml-app --port=80 --labels='app=ml-app'

# List kubernetes pods
kubectl get pods

# while loop for pod status
while [ "$(kubectl describe pods ml-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')" != "Running" ]; do
    echo "Waiting for POD status: $(kubectl describe pods ml-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')"
done
echo "POD status is Running"

# Forward the container port to a host
kubectl port-forward --address 0.0.0.0 pod/ml-app 80:80

# Shows logs of containers
kubectl logs -lapp=ml-app --all-containers=true
