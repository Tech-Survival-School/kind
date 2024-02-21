# Deploy and Teardown a local KinD kubernetes cluster
This is the home (main) branch.  Please be sure the following are installed under Requirements and select a deployment shell. \
\
[![TSS KinD Video](http://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](https://youtu.be/wufvujgNeAY "TSS: Local KinD K8s Cluster")
\
[<img alt="KinD" width="25%" src="/images/kind-logo.png" />](https://kind.sigs.k8s.io/)

## Requirements
1. kind
2. kubectl
3. docker
4. helm 
5. python3

## Clone Repo and Deploy
```powershell
Set-Location $env:USERPROFILE
git clone https://github.com/Tech-Survival-School/kind.git
Set-Location .\kind
git checkout powershell
.\redeploy.ps1
```

## Teardown
```powershell
.\scripts\teardown.ps1
```