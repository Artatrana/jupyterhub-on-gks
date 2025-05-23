# scripts/03-install-helm.sh
#!/bin/bash

# Install Helm
curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

# Add JupyterHub Helm repo
helm repo add jupyterhub https://jupyterhub.github.io/helm-chart/
helm repo update
