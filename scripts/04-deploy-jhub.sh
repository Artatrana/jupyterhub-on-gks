# scripts/04-deploy-jhub.sh
#!/bin/bash

RELEASE_NAME="jhub"
NAMESPACE="jhub"
CONFIG_FILE="jupyterhub/config.yaml"

# Create namespace
kubectl create namespace $NAMESPACE || echo "Namespace $NAMESPACE already exists"

# Deploy JupyterHub
helm upgrade --install $RELEASE_NAME jupyterhub/jupyterhub \
  --namespace $NAMESPACE \
  --version=3.1.0 \
  -f $CONFIG_FILE
