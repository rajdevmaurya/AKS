variable "PRIVATE_ACR_NAME" {
  type    = string
  default = "myprivateacr14321"
}

variable "ACR_SKU" {
  type    = string
  default = "Premium"
}

variable "LOCATION" {
  type    = string
  default = "East US"
}

variable "RESOURCE_GROUP_NAME" {
  type    = string
  default = "rg-devops"
}
