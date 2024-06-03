#!/usr/bin/bash

## Argo Helm Chart Repo
helm repo add argo https://argoproj.github.io/argo-helm

## Grafana Helm Chart Repo
helm repo add grafana https://grafana.github.io/helm-charts

## gabe565 Helm Chart Repo
## includes: AdGuard Home, Homer
helm repo add gabe565 https://charts.gabe565.com

helm repo update