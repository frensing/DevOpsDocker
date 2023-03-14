#!/bin/sh

# Login
docker login -u $DOCKER_USER -p $DOCKER_PWD

# Cloning Repo
git clone https://github.com/$1.git tmp_repo

# Build and Push
docker build tmp_repo -t $2
docker push $2

# Cleaning up
rm -rf tmp_repo
docker image rm $2
