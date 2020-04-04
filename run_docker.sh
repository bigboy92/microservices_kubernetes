#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
image_name=kruthigagopalan/ml

# Step 2: 
# List docker images
echo $image_name
docker build --tag $image_name -f Dockerfile .
docker images

# Step 3: 
# Run flask app
docker run -ti --rm -p 80:80 $image_name





