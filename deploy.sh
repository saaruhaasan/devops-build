#!/bin/bash
# Script to deploy docker container

echo "Deploying application using docker-compose..."
docker-compose up -d --build
