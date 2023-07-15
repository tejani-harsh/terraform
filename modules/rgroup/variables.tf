variable "rg-name" {}
variable "rg-location" {}
locals {
  assignment01_tags = {
    Project = "Assigment"
    Name           = "Harsh Tejani"
    ExpirationDate = "2024-12-31"
    Environment    = "Lab"
  }
}