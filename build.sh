#!/bin/bash
# Script to build docker image

IMAGE_NAME="devops-app"

echo "Building Docker image: $IMAGE_NAME"
docker build -t $IMAGE_NAME .

