
variable "rg-name" {}
variable "rg-location" {}
variable "vnet-name" {
  default = "n01581156-vnet"
}
variable "vnet-space" {
  default = ["10.0.0.0/16"]
}
variable "subnet-name1" { default = "n01581156-subnet" }

variable "subnet1-address-space" {
  default = ["10.0.1.0/24"]
}

# variable "subnet2-address-space" {
#   default = ["10.0.2.0/24"]
# }
variable "security-group1" { default = "network-nsg1" }
# variable "security-group2" { default = "network-nsg2" }

