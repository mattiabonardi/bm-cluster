# BM Cluster

BM Cluster is a set of scripts that allow you to install, update a set of container-based applications. It uses bash scripts and docker compose.

## Prerequisites

- Linux OS
- Git
- Docker/Docker Compose

## Commands

First setup:

```sh
bash install_cluster-sh
```

Update single application:

```sh
bash update_application.sh [APPLICATION_NAME]
es. bash update_application.sh bm-portfolio
```

Stop and clean all resources
```sh
bash stop_and_clean_cluster.sh
```