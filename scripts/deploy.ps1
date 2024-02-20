# Create Kind Cluster
kind create cluster --config .\config\kind-config.yaml
$env:KUBECONFIG = $env:USERPROFILE + "\.kube\config"
kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/master/manifests/calico.yaml
#kubectl -n kube-system set env daemonset/calico-node FELIX_IGNORELOOSERPF=true

# Prometheus and Grafana
kubectl create namespace monitoring
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update
helm install -f .\monitoring\prometheus-values.yaml prometheus prometheus-community/kube-prometheus-stack -n monitoring --wait

# Deploy sample app httpbin
kubectl apply -f .\sample-app\httpbin.yaml