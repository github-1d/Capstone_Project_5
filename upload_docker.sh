#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="monika2019/monika-flask-app"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker load -i /monika-flask-app-latest.tar
# docker login --username monika2019
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker image tag monika-flask-app $dockerpath

# Step 3:
# Push image to a docker repository
docker image push $dockerpath