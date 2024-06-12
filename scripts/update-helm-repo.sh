#!/usr/bin/bash

## Cilium Helm Chart Repo
helm repo add cilium https://helm.cilium.io/

## bjw-s common chart library Helm Chart Repo
helm repo add bjw-s https://bjw-s.github.io/helm-charts

## Argo Helm Chart Repo
helm repo add argo https://argoproj.github.io/argo-helm

## Grafana Helm Chart Repo
helm repo add grafana https://grafana.github.io/helm-charts

## Prometheus Helm Chart Repo
helm repo add prometheus https://prometheus-community.github.io/helm-charts

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx

## gabe565 Helm Chart Repo
## includes: AdGuard Home, Homer
#helm repo add gabe565 https://charts.gabe565.com

helm repo update
