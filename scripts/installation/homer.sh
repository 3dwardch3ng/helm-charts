#!/usr/bin/bash

helm upgrade --install ../charts/homer -n homer --create-namespace --values ../charts/homer/values-home-pi-cluster.yaml