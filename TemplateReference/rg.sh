#!/bin/bash
echo "Enter a project name that is used to generate resource and resource group names:"
read projectName
resourceGroupName="${projectName}rg"

az group create \
	  --name $resourceGroupName \
	    --location "Central US"
