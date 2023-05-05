#!/bin/bash

echo "Enter a project name that is used to generate resource and resource group names:"
read projectName
resourceGroupName="${projectName}rg"
echo "Enter the template file path"
read templateFilePath

az deployment group create \
	  --name DeployLocalTemplate \
	  --resource-group $resourceGroupName \
	  --template-file "$templateFilePath/azuredeploy.json" \
	  --parameters "$templateFilePath/azuredeploy.parameters.json" \
	  # --verbose
