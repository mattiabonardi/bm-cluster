#!/bin/bash

# DESCRIPTION 
# The script allows to clone bm-application repositories

# MAIN
REPOSITORIES=( "mattiabonardi/bm-portfolio" "mattiabonardi/tictactoe" )

# create repository directory if not exists
DIR="../repositories"
if [ ! -d "$DIR" ]; then
  echo "Create ${DIR} folder"
  mkdir ${DIR}
fi

# clone repositories
cd ../repositories
for repository in ${REPOSITORIES[@]}; do
    GITHUB_URL="https://github.com/${repository}"
    echo "Cloning ${GITHUB_URL}"
    git clone $GITHUB_URL
done
