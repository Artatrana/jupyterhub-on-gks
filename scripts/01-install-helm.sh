#!/bin/bash

PROJECT_ID="pacific-cargo-381919"
CLUSTER_NAME="jhub-cluster"
ZONE="us-west1-a"

# Set project
gcloud config set project $PROJECT_ID

# Create GKE cluster
gcloud container clusters create $CLUSTER_NAME \
  --zone $ZONE \
  --num-nodes=2 \
  --machine-type=e2-medium \
  --enable-ip-alias

# Get credentials
gcloud container clusters get-credentials $CLUSTER_NAME --zone $ZONE