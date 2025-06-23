# Azure Tech Test

This repository contains the implementation of the technical test using a combination of Azure Portal and Azure CLI, following the assignment instructions exactly.

## Summary of Resources and Tools

### Azure Function + Blob Storage (via Portal)
- Created through the Azure Portal
- Function App has System-assigned Managed Identity enabled
- Access to the Storage Account is configured via RBAC

### Web App (via Azure CLI)
Created with:
az webapp create --name techtest-webapp --resource-group techtest-rg --plan techtest-plan --runtime "PYTHON|3.10"

### Azure Key Vault + Secrets (via Azure CLI)
Key Vault and secrets created and permissions granted via CLI.

### Azure Service Bus + Queue (via Portal)
Created via the Azure Portal. Permissions for the Function App were set using Managed Identity.

### Entra ID: App Registration + Role Assignment (via Azure CLI)
- App Registration created
- Service Principal generated
- Secret created and passed to Function App via app settings
- Role assigned to allow access to Key Vault
