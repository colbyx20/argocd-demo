#!/bin/bash

kubectl create serviceaccount argocd-manager -n kube-system
kubectl create clusterrolebinding argocd-manager-role --clusterrole=cluster-admin --serviceaccount=kube-system:argocd-manager

kubectl apply -f argocd-manager-token.yaml

# pull secret from argocd secret token in -n kube-system
