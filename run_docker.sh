#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build --tag monika-flask-app .

# Step 2: 
docker images

# Step 3:
docker save monika-flask-app:latest > monika-flask-app-latest.tar
ls

# Step 3: 
# Run flask app
# docker run -p 8000:80 monika-flask-app:blue
