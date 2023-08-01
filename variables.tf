variable "rg_name" {
    default = "azure_rg_terraform"
    type = string
    description = "This is about resource group name"
}

variable "location" {
    default = "eastus2"
    type = string
    description = "This is about resource group location"
}
variable "sp_name" {
    default = "mynewsp1"
    type = string
    description = "This is about service plan name"
  
}
variable "os_type" {
    default = "Linux"
    type = string
  
}
variable "sku_name" {
    default = "P1v2"
    type = string
  
}
variable "wapp_name" {
    default = "mynewwebapp11"
    type = string
    description = "This is about web app name"
}