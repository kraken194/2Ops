locals {
  resource_group_name = lower("${var.project_name}_${var.environment}")
  key_vault_name      = lower("kv-${var.project_name}-${var.environment}")
}
