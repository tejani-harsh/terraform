variable "rg-name" {}
variable "rg-location" {}
locals {
  assignment01_tags = {
    Project = "Assigment"
    Name           = "Harsh Tejani"
    ExpirationDate = "2023-12-30"
    Environment    = "Lab"
  }
}