// resource group name
output "Resourse_Group_Name" {
  value = module.rgroup-5112.resource_group_name
}
// location
output "location" {
  value = module.rgroup-5112.location
}

// virtual network name
output "virtual_network_name" {
  value = module.network-5112.vnet_name
}
// subnet name
output "subnet_name" {
  value = module.network-5112.subnet_name
}
// subnet id
output "subnet_id" {
  value = module.network-5112.subnet_id
}

// log analytics workspace name
output "log_analytics_workspace_name" {
  value = module.common-5112.log_analytics_workspace_name
}

// recovery services vault name
output "recovery_services_vault_name" {
  value = module.common-5112.recovery_services_vault_name
}

// storage account name
output "storage_account_name" {
  value = module.common-5112.storage_account_name
}

// storage account primary blob endpoint
output "storage_account-primary_blob_endpoint" {
  value = module.common-5112.storage_account-primary_blob_endpoint
}

// datadisk name
output "datadisk_name" {
  value = module.datadisk-5112.datadisk_name
}
// linux virtual machine hostname
output "vmlinux-hostname" {
  value = module.vmlinux-5112.vmlinux
}

// linux virtual machine fully qualified domain name
output "vmlinux-fqdn" {
  value = module.vmlinux-5112.vmlinux-fqdn
}

// linux virtual machine private IP address
output "vmlinux-private-ip" {
  value = module.vmlinux-5112.vmlinux-private-ip
}

// linux virtual machine public IP address
output "vmlinux-public-ip" {
  value = module.vmlinux-5112.vmlinux-public-ip
}

// linux virtual machine network interface IDs
output "vmlinux-nic-ids" {
  value = module.vmlinux-5112.vmlinux-nic-ids
}

// windows virtual machine hostname
output "vmwindows-hostname" {
  value = module.vmwindows-5112.windows
}

// windows virtual machine fully qualified domain name
output "vmwindows-fqdn" {
  value = module.vmwindows-5112.windows_vm_fqdn
}

// windows virtual machine private IP address
output "vmwindows-private-ip" {
  value = module.vmwindows-5112.windows_private_ip_address
}

// windows virtual machine public IP address
output "vmwindows-public-ip" {
  value = module.vmwindows-5112.windows_public_ip_address
}

// windows virtual machine network interface IDs
output "vmwindows-nic-ids" {
  value = module.vmwindows-5112.windows_nic_id
}

// load balancer public IP address
output "loadbalancer-public-ip" {
  value = module.loadbalancer-5112.loadbalancer-public-ip
}

// load balancer name
output "loadbalancer-name" {
  value = module.loadbalancer-5112.loadbalancer-name
}

// database instance name
output "database_instance_name" {
  value = module.database-5112.database_instance_name
}



