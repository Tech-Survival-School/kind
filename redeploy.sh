#!/usr/bin/env bash

# Check for Dependencies
echo "Checking for Dependencies..."

# Check for python3
if ! command -v python3 &> /dev/null
then
    echo "python3 not found"
    return
fi

# Check commands
ANYMISSING=0
for dependency in kind docker kubectl helm
do
    if ! command -v $dependency &> /dev/null
    then
        echo "$dependency $(python3 -c "print(\"\u274c\")")"
        ANYMISSING=1
    else
        echo "$dependency $(python3 -c "print(\"✓\")")"
    fi
done

if [ $ANYMISSING -eq 1 ]
then
    echo "Dependencies not found. Please install and add to path and rerun."
    return
fi

# Set KUBECONFIG
export KUBECONFIG=$HOME/.kube/config

# Local Environment Variables

# Teardown
./scripts/teardown.sh

# Deploy
./scripts/deploy.sh