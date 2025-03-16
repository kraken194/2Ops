variable "environment" {
  type        = string
  description = "Environment selector"
  validation {
    condition     = can(regex("^(dev|qa|stage|prod|)$", var.environment))
    error_message = "Invalid environmet index, only allowed index are: 'dev', 'qa', 'stage', 'prod'"
  }
}

variable "project_name" {
  type        = string
  description = "Project name"
}

variable "location" {
  type    = string
  default = "Central US"
}

variable "tenant_id" {
  description = "The Azure tenant ID"
  type        = string
}
