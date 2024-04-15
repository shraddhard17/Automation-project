variable "resource_group_name" {}

variable "location" {}

variable  "common_tags" {}

variable "log_analytics_workspace_name" {
 default = "5112-log-analysis-workspace"
}

variable "recovery_services_vault_name" {
 default = "Vault5112"
}

variable "storage_account_name" {
 default = "5112storageaccnew"
}