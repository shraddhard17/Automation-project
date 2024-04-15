locals {
  common_tags = {
    Assignment = "CCGC 5502 Automation Assignment"
    Name = "Shraddha.Dhoble"
    ExpirationDate = "2024-12-31"
    Environment = "Learning"
  }
}

variable "location" {
  description = "Location for the resource group"
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
	default	= "5112-RG"
}

variable "vnet_name" {
	default	= "5112-VNET"
}

variable "subnet_name" {
	default = "5112-SUBNET"
}

variable "nsg_name" {
	default = "5112-NSG"
}