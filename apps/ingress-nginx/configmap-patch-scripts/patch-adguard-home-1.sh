#!/usr/bin/bash
set -e

kubectl patch configmap tcp-services -n kube-system --patch '{"data":{"10080":"adguard-home/adguard-home:80","13000":"adguard-home/adguard-home:13000","53":"adguard-home/adguard-home:53","853":"adguard-home/adguard-home:853"}}'
kubectl patch configmap udp-services -n kube-system --patch '{"data":{"53":"adguard-home/adguard-home:53","784":"adguard-home/adguard-home:784"}}'
