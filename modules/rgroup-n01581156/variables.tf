variable "rg-name" {}
variable "rg-location" {}
locals {
  assignment01_tags = {
    Project = "CCGC 5502 Automation Assignement"
    Name           = "Harsh Tejani"
    ExpirationDate = "2024-12-31"
    Environment    = "Learning"
  }
}