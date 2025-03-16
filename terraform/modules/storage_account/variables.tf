variable "location" {
  description = "The Azure region to deploy the resources"
  type        = string
}

variable "environment" {
  type        = string
  description = "Terraform cloud workspace name, used to store state files"
  validation {
    condition     = can(regex("^(dev|qa|stage|prod|)$", var.environment))
    error_message = "Invalid environmet index, only allowed index are: 'dev', 'qa', 'stage', 'prod'"
  }
}

variable "project_name" {
  type        = string
  description = "Project name"
}
