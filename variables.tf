variable "env" {
  description = "(Required) You can use a prefix to add to the list of resource groups you want to create"
}

variable "resource_group" {
  description = "(Required) Resource group object of the AKV to be created"
}

variable "tags" {
  description = "(Required) Tags to be applied to the AKV to be created"
}

variable "maxLength" {
  default = 64
  type    = number
}

variable "userDefinedString" {
  description = "(Required) UserDefinedString part of the name of the resource"
  type        = string
}