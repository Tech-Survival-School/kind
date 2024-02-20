# Configure Environment Variables
New-Alias -Name "k" kubectl -Force

# Teardown
.\scripts\teardown.ps1

# Deploy
.\scripts\deploy.ps1
