#!/usr/bin/bash
set -e

tag=$1

./deploy.sh homer home-pi-cluster ${tag}
