#One virtual network and one subnet
resource "azurerm_virtual_network" "network-vnet" {
  name                = var.vnet-name
  location            = var.rg-location
  resource_group_name = var.rg-name
  address_space       = var.vnet-space
}

resource "azurerm_subnet" "network-subnet1" {
  name                 = var.subnet-name1
  resource_group_name  = var.rg-name
  virtual_network_name = azurerm_virtual_network.network-vnet.name
  address_prefixes     = var.subnet1-address-space
}

#securtiy group
resource "azurerm_network_security_group" "nsg1" {
  name                = var.security-group1
  location            = var.rg-location
  resource_group_name = var.rg-name

  security_rule {
    name                       = "rule1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "rule2"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "rule3"
    priority                   = 300
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "5985"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "rule4"
    priority                   = 400
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}
# Subnet SecurityGroup Association with Subnet
resource "azurerm_subnet_network_security_group_association" "network-nsg1" {
  subnet_id                 = azurerm_subnet.network-subnet1.id
  network_security_group_id = azurerm_network_security_group.nsg1.id
}


