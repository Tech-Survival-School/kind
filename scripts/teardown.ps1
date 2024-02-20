$env:KUBECONFIG = $env:USERPROFILE + "\.kube\config"

# Delete kind cluster
kind delete cluster --name multiverse