# Provider

variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "client_id" {
  type        = string
  description = "Azure client ID"
}

variable "client_secret" {
  type        = string
  description = "Azure client secret"
}

variable "tenant_id" {
  type        = string
  description = "The Azure tenant ID"
}


variable "environment" {
  type        = string
  description = "Environment selector"
}

variable "project_name" {
  type        = string
  description = "Project name"
}

variable "location" {
  type    = string
  default = "Central US"
}