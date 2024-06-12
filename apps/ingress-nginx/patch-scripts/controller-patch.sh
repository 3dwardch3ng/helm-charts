#!/usr/bin/bash
set -e

file_name=$1

kubectl patch deployment ingress-nginx-controller -n ingress-nginx --patch "$(cat $file_name)"
