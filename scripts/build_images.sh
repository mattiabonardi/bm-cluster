#!/bin/bash

# DESCRIPTION 
# The script allows to build the images of bm-applications

# MAIN

# iterate repositories directory
cd ../repositories
for repository in *; do
    if [ -d "$repository" ]; then
        cd $repository
        bash build.sh
        cd ..
    fi
done
