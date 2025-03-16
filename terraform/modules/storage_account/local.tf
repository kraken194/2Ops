locals {
  resource_group_name  = lower("${var.project_name}_${var.environment}")
  storage_account_name = lower("st${var.project_name}${var.environment}")
}
