# Deploy and Teardown a local KinD kubernetes cluster
This is the home (main) branch.  Please be sure the following are installed under Requirements and select a deployment shell. \
\
[<img alt="KinD" width="25%" src="/images/kind-logo.png" />](https://kind.sigs.k8s.io/)

## Requirements
1. kind
2. kubectl
3. docker
4. helm 
5. python3

## Clone Repo and Deploy
```bash
cd $HOME
git clone https://github.com/Tech-Survival-School/kind.git
cd ./kind
git checkout bash
source ./redeploy.sh
```

## Teardown
```bash
./scripts/teardown.sh
```