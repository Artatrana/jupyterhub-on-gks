# JupyterHub on GKE

## 📦 Setup Instructions

### 1. Enable GCP APIs
```bash
./scripts/01-enable-gcp-apis.sh
```

### 2. Create GKE Cluster
Edit `02-create-gke-cluster.sh` to set your `PROJECT_ID`.
```bash
./scripts/02-create-gke-cluster.sh
```

### 3. Install Helm
```bash
./scripts/03-install-helm.sh
```

### 4. Deploy JupyterHub
Generate a token with:
```bash
openssl rand -hex 32
```
Replace it in `jupyterhub/config.yaml`, then:
```bash
./scripts/04-deploy-jhub.sh
```

### 5. Delete Cluster (when done)
```bash
./scripts/99-delete-gke-cluster.sh
```

---
Customize `config.yaml` for authentication, resources, and persistent storage.
