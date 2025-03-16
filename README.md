# Terraform Deployment

This repository contains a GitHub Actions workflow for deploying infrastructure using Terraform on Azure. The workflow allows you to plan, apply, or destroy Terraform configurations for different environments.

## Workflow Configuration

The workflow is triggered manually using the `workflow_dispatch` event. You need to provide the environment name and the Terraform command you want to execute.

### Inputs

- **environment**: The environment to deploy to. Options are `dev` and `qa`.
- **command**: The Terraform command to execute. Options are `plan`, `apply`, and `destroy`.

### Environment Variables

The following environment variables are used in the workflow:

- **AZURE_CLIENT_ID**: Azure Service Principal Client ID (Secret)
- **AZURE_CLIENT_SECRET**: Azure Service Principal Client Secret (Secret)
- **AZURE_TENANT_ID**: Azure Tenant ID (Secret)
- **AZURE_SUBSCRIPTION_ID**: Azure Subscription ID (Secret)
- **AZURE_LOCATION**: Azure location for the resources
- **AZURE_PROJECT_NAME**: Name of the Azure project
- **AZURE_SERVICE_RESOURCE_GROUP_NAME**: Name of the Azure resource group
- **AZURE_SERVICE_STORAGE_ACCOUNT_NAME**: Name of the Azure storage account
- **AZURE_SERVICE_STORAGE_CONTAINER_NAME**: Name of the Azure storage container
- **AZURE_ENVIRONMENT**: Environment name provided as input
- **AZURE_TERRAFORM_STATE_KEY**: Key for Terraform state file, based on the environment

## Workflow Steps

1. **Checkout Code**: Checks out the repository code.
2. **Azure CLI Login**: Logs in to Azure using the service principal credentials.
3. **Print Environment Variable**: Prints the environment name for debugging purposes.
4. **Setup Terraform**: Sets up Terraform CLI.
5. **Terraform Init**: Initializes Terraform with backend configuration.
6. **Terraform Validate**: Validates the Terraform configuration.
7. **Terraform Plan**: Runs `terraform plan` if the command is `plan` or `apply`.
8. **Terraform Apply**: Runs `terraform apply` if the command is `apply`.
9. **Terraform Destroy**: Runs `terraform destroy` if the command is `destroy`.

## Terraform Modules

### Dev Environment

In the `dev` environment, the Terraform module creates a basic storage account.

### QA Environment

In the `qa` environment, the Terraform module creates only a Key Vault.

## Example Usage

To manually trigger the workflow, go to the Actions tab in your GitHub repository, select the Terraform Deployment workflow, and click the "Run workflow" button. Provide the required inputs and click "Run workflow".

### Example Inputs

- **environment**: `dev`
- **command**: `plan`

## Secrets and Variables Configuration

Ensure the following secrets and variables are configured in your GitHub repository:

### Secrets

- `AZURE_CLIENT_ID`
- `AZURE_CLIENT_SECRET`
- `AZURE_TENANT_ID`
- `AZURE_SUBSCRIPTION_ID`

### Variables

- `AZURE_LOCATION`
- `AZURE_PROJECT_NAME`
- `AZURE_SERVICE_RESOURCE_GROUP_NAME`
- `AZURE_SERVICE_STORAGE_ACCOUNT_NAME`
- `AZURE_SERVICE_STORAGE_CONTAINER_NAME`
- `AZURE_TERRAFORM_STATE_NAME`

## License

This project is licensed under the MIT License.