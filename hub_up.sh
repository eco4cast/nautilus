#!/bin/bash

#helm repo add jupyterhub https://hub.jupyter.org/helm-chart/
#helm repo update

## use your name for install name and namespace name
helm upgrade --cleanup-on-fail \
  --install jupyterhelm jupyterhub/jupyterhub \
  --namespace eco4cast \
  --version=4.0.0 \
  --timeout 10m0s \
  --values values.yaml \
  --values secrets.yaml

# purge everything related to helm
# helm delete jupyterhelm 

