# scripts/99-delete-gke-cluster.sh
#!/bin/bash

CLUSTER_NAME="jhub-cluster"
ZONE="us-central1-a"

# Delete GKE cluster
gcloud container clusters delete $CLUSTER_NAME \
  --zone $ZONE --quiet
