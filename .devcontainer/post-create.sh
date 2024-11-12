#!/bin/bash

# Create k8s cluster
kind create cluster --config .devcontainer/kind-cluster.yml --wait 5m

# Your content here
# TODO

# Creation Ping
# TODO: Uncomment when you're ready to go live
# curl -X POST https://grzxx1q7wd.execute-api.us-east-1.amazonaws.com/default/codespace-tracker \
#   -H "Content-Type: application/json" \
#   -d "{
#     \"repo\": \"$GITHUB_REPOSITORY\",
#     \"demo\": \"demo-PLACEHOLDER\",
#     \"codespace.name\": \"$CODESPACE_NAME\"
#   }"
