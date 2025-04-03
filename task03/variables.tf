variable "tag" {
  description = "tag"
  type        = string
}

variable "location" {
  description = "localtion"
  type        = string
}

variable "resource_group_name" {
  description = "resource group name"
  type        = string
}


variable "vnetname" {
  description = "vnet name"
  type        = string
}


variable "address_space" {
  description = "address space for vnet"
  type        = list(string)
}

variable "subnet1name" {
  description = "subnet name"
  type        = string
}

variable "address_prefix_1" {
  description = "address space for subnet"
  type        = list(string)
}

variable "subnet2name" {
  description = "subnet name"
  type        = string
}

variable "address_prefix_2" {
  description = "address space for subnet"
  type        = list(string)
}