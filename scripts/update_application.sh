#!/bin/bash

# DESCRIPTION 
# The script allows to update application

# MAIN

# getting argument
APP=$1

# check argument
if [ -z "$APP" ]
then
      echo "Missing application name as cmd argument";
      exit;
fi;

# pull repository
cd ../repositories/$APP
git pull

# build image
bash build.sh

# restart docker service
cd ../../docker
docker compose up -d $APP
docker image prune