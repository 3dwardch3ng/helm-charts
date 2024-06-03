#!/usr/bin/bash
set -e

tag=$1

./deploy.sh argocd home-pi-cluster ${tag}