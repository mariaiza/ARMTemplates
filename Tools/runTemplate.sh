#!/bin/bash

# echo "has template params file? (y). Default n."
# read -r hasParam

dateTime=$(date +%Y%m%d%H%M%S)
rg="AbcTempRg"
templateFilePath=$(pwd)

# RG name
if [ -n "$1" ]
then
	rg=$1
fi
# Dir
if [ -n "$2" ]
then
	templateFilePath=$2
fi

deploymentName=AbcTemplate${dateTime}
templateFile="${templateFilePath}/azuredeploy.json"
parameters="${templateFilePath}/azuredeploy.parameters.json"

# determine params
# if [ "$hasParam" == "y" ]
if [ -f "$parameters" ]
then
	params=' \
--parameters "'"${parameters}"'"'
fi

# echo $params
args='az deployment group create \
--name "'"${deploymentName}"'" \
--resource-group "'"${rg}"'" \
--template-file "'"${templateFile}"'"'"${params}"
#'\
#--verbose'

# Execute template deployment
echo 'Executing '"$args"
eval "$args"


