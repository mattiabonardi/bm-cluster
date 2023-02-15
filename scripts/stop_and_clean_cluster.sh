#!/bin/bash

# DESCRIPTION 
# The script allows to stop and remove all docker containers

# MAIN
docker ps -aq | xargs docker stop | xargs docker rm
docker image prune