az ad app create --display-name techtest-app --query appId --output tsv
az ad sp create --id ee7a9573-e054-4b0d-8f67-47c57e0b65ee
az ad app credential reset --id ee7a9573-e054-4b0d-8f67-47c57e0b65ee --append --display-name "TechTestSecret" --years 1 --query password --output tsv
az functionapp config appsettings set --name techtest-function --resource-group techtest-rg --settings AZURE_CLIENT_ID=ee7a9573-e054-4b0d-8f67-47c57e0b65ee AZURE_TENANT_ID=dcefda13-e184-47e3-91ee-7e1d4ab29971 AZURE_CLIENT_SECRET=
