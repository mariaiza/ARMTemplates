# #!/bin/bash

dateTime=`date +%Y%m%d%H%M%S`
rg="AbcTempRg"
templateFilePath=`pwd`

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
echo $rg
echo $templateFilePath
echo $dateTime

az deployment group create \
	  --name $dateTimeAbcTemplate \
	  --resource-group $rg \
	  --template-file "$templateFilePath/azuredeploy.json" \
	  --parameters "$templateFilePath/azuredeploy.parameters.json" \
	  # --verbose
