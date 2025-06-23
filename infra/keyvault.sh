az keyvault create --name techtest-kv123 --resource-group techtest-rg --location westus2
az keyvault secret set --vault-name techtest-kv123 --name ApiKey --value "value1"
az keyvault secret set --vault-name techtest-kv123 --name DbConnection --value "value2"
az role assignment create --assignee ee7a9573-e054-4b0d-8f67-47c57e0b65ee --role "Key Vault Secrets User" --scope $(az keyvault show --name techtest-kv123 --query id -o tsv)
