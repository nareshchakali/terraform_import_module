# terraform_import_module
# create azurerm_resource_group_name and vnet, one subnet
make sure try to import those resource details into that exsting terraform.tfstate file with out creating resources bu using existing resources following steps are used to import those services.

# import azurerm_resource_group_name details by using below command

**terraform import azurerm_resource_group.rg /subscriptions/0000-0000-0000-0000-0000000000/resourceGroups/terraform_rg**

# import azurerm_virtual_network by using below command.

**terraform import azurerm_virtual_network.existing_vnet/subscriptions/11e07d93-b7de-44c1-b006-7218b5fb3180/resourceGroups/terraform_rg/providers/Microsoft.Network/virtualNetworks/terraformVNET**

# import 'azurerm_subnet' by using given below command.
3.	**terraform import azurerm_subnet.existing_subnet /subscriptions/11e07d93-b7de-44c1-b006-7218b5fb3180/resourceGroups/terraform_rg/providers/Microsoft.Network/virtualNetworks/terraformVNET/subnets/sub1**
