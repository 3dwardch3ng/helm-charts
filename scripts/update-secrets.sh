#!/bin/bash
set -e

namespace="home-pi-cluster"

kubectl delete secret ${namespace}-secrets -n ${namespace}

kubectl create namespace ${namespace} --dry-run=client -o yaml | kubectl apply -f -

cat <<EOF | kubectl apply -f -
  apiVersion: v1
  kind: Secret
  metadata:
    namespace: ${namespace}
    name: ${namespace}-secrets
  type: Opaque
  data:
    # AdGuard Home
    adguardHomeUserName: $ADGUARD_HOME_USER_NAME
    adguardHomePasswordHash: $ADGUARD_HOME_PASSWORD_HASH
    # Code Server
    codeServerPassword: $CODE_SERVER_PASSWORD
    codeServerPasswordHash: $CODE_SERVER_PASSWORD_HASH
    codeServerSudoPassword: $CODE_SERVER_SUDO_PASSWORD
    codeServerSudoPasswordHash: $CODE_SERVER_SUDO_PASSWORD_HASH
EOF