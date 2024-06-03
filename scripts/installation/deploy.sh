#!/bin/bash
set -e

chart_name=$1
env_name=$2
tag=$3

namespace="home-pi-cluster"

echo "chart_name: $chart_name"
echo "env_name: $env_name"

if [[ -f "../../charts/${chart_name}/values_$env_name.yaml" ]]; then
  helm upgrade --install "${chart_name}" \
    "../../charts/${chart_name}" -n "${namespace}" --create-namespace \
    --values "../../charts/${chart_name}/values_$env_name.yaml" \
    --set image.tag="$tag" --timeout 60m
else
  echo "Skipping ${chart_name}. ../../charts/${chart_name}/values_$env_name.yaml does not exist"
fi