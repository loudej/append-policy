set -e

az group create --location westus --resource-group append-sample

az deployment group create --resource-group append-sample --template-file azuredeploy.json

