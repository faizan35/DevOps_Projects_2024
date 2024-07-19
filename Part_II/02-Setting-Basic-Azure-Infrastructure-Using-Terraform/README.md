# 2. Setting Up a Basic Azure Infrastructure Using Terraform

## Prerequisites

1. **Azure Account:** Ensure you have an active Azure subscription.
2. **Terraform Installed:** Make sure Terraform is installed on your local machine.
3. **Azure CLI:** Install the Azure CLI and log in to your Azure account.

## Steps to Create the Project

#### 1. **Install Azure CLI and Log In**

```sh
# Install Azure CLI
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# Log in to your Azure account
az login
```

#### 2. **Set Up the Directory Structure**

Create a directory for your Terraform project.

```sh
mkdir terraform-azure-project
cd terraform-azure-project
```

#### 3. **Create the `main.tf` File**

This file will contain the configuration for your Azure resources.

```hcl
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "East US"
}

resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_subnet" "example" {
  name                 = "example-subnet"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_security_group" "example" {
  name                = "example-nsg"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}

resource "azurerm_network_interface" "example" {
  name                = "example-nic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.example.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "example" {
  name                  = "example-vm"
  location              = azurerm_resource_group.example.location
  resource_group_name   = azurerm_resource_group.example.name
  network_interface_ids = [azurerm_network_interface.example.id]
  vm_size               = "Standard_DS1_v2"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  storage_os_disk {
    name              = "example-os-disk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  os_profile {
    computer_name  = "example-vm"
    admin_username = "azureuser"
    admin_password = "P@ssw0rd1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestorageacct"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
```

#### 4. **Create the `variables.tf` File**

Define variables to make your configuration more flexible.

```hcl
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "The location of the resources"
  type        = string
  default     = "East US"
}
```

#### 5. **Create the `outputs.tf` File**

Define outputs to get useful information about your infrastructure.

```hcl
output "resource_group_name" {
  description = "The name of the resource group"
  value       = azurerm_resource_group.example.name
}

output "virtual_network_name" {
  description = "The name of the virtual network"
  value       = azurerm_virtual_network.example.name
}

output "subnet_name" {
  description = "The name of the subnet"
  value       = azurerm_subnet.example.name
}

output "virtual_machine_name" {
  description = "The name of the virtual machine"
  value       = azurerm_virtual_machine.example.name
}

output "storage_account_name" {
  description = "The name of the storage account"
  value       = azurerm_storage_account.example.name
}
```

#### 6. **Initialize Terraform**

```sh
terraform init
```

#### 7. **Plan the Infrastructure**

```sh
terraform plan
```

#### 8. **Apply the Configuration**

```sh
terraform apply
```

#### Explanation of the Project

1. **Provider Configuration:** The `azurerm` provider is configured to interact with Azure.
2. **Resource Group:** A resource group is created to hold all the resources.
3. **Virtual Network and Subnet:** A virtual network and subnet are set up for networking.
4. **Network Security Group:** A network security group is created to control traffic.
5. **Network Interface:** A network interface is created for the virtual machine.
6. **Virtual Machine:** An Ubuntu virtual machine is created with specified settings.
7. **Storage Account:** A storage account is created for storing data.

This project will give you a good understanding of how to use Terraform to manage Azure infrastructure. You can expand this project by adding more resources or modifying existing ones.
