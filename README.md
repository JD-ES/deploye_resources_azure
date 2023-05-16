<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | 1.4.6 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >=3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.56.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_key_vault.kv-app-prod-eastus-001](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) | resource |
| [azurerm_network_security_group.sg-app-prod-eastus-001](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_resource_group.rg-app-prod-eastus-001](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_storage_account.stg-app-prod-eastus-001](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |
| [azurerm_storage_container.stg-ctn-app-prod-eastus-001](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_container) | resource |
| [azurerm_subnet.sub-app-prod-eastus-001](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet) | resource |
| [azurerm_virtual_network.vnet-app-prod-eastus-001](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network) | resource |
| [azurerm_client_config.tenant_id](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_tags"></a> [tags](#input\_tags) | A mapping of tags to assign to the resource | `map(string)` | <pre>{<br>  "owner": "Deyvis Espinoza"<br>}</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_keyVault_url"></a> [keyVault\_url](#output\_keyVault\_url) | Bring the key vault uri |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | Bring the resource group name |
| <a name="output_storage_url"></a> [storage\_url](#output\_storage\_url) | Bring the storage account url |
| <a name="output_subnet_space"></a> [subnet\_space](#output\_subnet\_space) | Bring the subnet address prefixes |
| <a name="output_vnet_space"></a> [vnet\_space](#output\_vnet\_space) | Bring the virtual network address space |
<!-- END_TF_DOCS -->