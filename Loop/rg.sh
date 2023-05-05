#!/bin/bash
echo "Enter a project name that is used to generate resource and resource group names:"
read projectName
export resourceGroupName=${projectName}rg
echo $resourceGroupName
# resourceGroupName="${projectName}rg"

# az group create \
# 	  --name $resourceGroupName \
# 	    --location "Central US"
