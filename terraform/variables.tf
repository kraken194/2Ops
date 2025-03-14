variable "terraform_cloud_organization_name" {
  type        = string
  default     = "2Ops_test"
  description = "Terraform cloud organization name"
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
  default     = "2Ops"
  description = "Project name"
}
