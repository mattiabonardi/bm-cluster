#!/bin/bash

# DESCRIPTION 
# The script allows to install BM Cluster

# MAIN

# iterate repositories directory
cd ../docker
rm .env
echo Insert Postgres password:
read postgres_password

echo BM_WIKI_DB_PASS="${postgres_password}" > .env

# create volumes
if [ ! -d "../volumes/bm-wiki" ]; then
  echo "Create /volumes/bm-wiki/db-data folder"
  mkdir ../volumes/bm-wiki
  mkdir ../volumes/bm-wiki/db-data
fi

docker-compose up -d
