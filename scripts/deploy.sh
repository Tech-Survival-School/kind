#!/usr/bin/env bash

# Create Kind Cluster
export KUBECONFIG=$HOME/.kube/config
kind create cluster --config ./kind/kind-config.yaml
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/master/manifests/calico.yaml

# Prometheus and Grafana
kubectl create namespace monitoring
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install -f ./monitoring/prometheus-values.yaml prometheus prometheus-community/kube-prometheus-stack -n monitoring --wait

# Deploy sample app httpbin
kubectl apply -f ./sample-app/httpbin.yaml