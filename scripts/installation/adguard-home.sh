#!/usr/bin/bash

helm upgrade --install ../charts/adguard-home -n adguard-home --create-namespace --values ../charts/adguard-home/values-home-pi-cluster.yaml