module "rgroup-5112" {
  source = "./modules/rgroup-5112"

   resource_group_name = var.resource_group_name
   location = var.location 

   common_tags = local.common_tags

}

module "network-5112" {
  source = "./modules/network-5112"
  
  resource_group_name = module.rgroup-5112.resource_group_name
  location = module.rgroup-5112.location
  
  vnet_name = var.vnet_name
  subnet_name = var.subnet_name
  nsg_name = var.nsg_name

  common_tags = local.common_tags
}

module "common-5112" {
  source = "./modules/common-5112"
  
  resource_group_name = module.rgroup-5112.resource_group_name
  location = module.rgroup-5112.location

  common_tags = local.common_tags
}

module "vmlinux-5112" {
  source = "./modules/vmlinux-5112"
  
  resource_group_name = module.rgroup-5112.resource_group_name
  location = module.rgroup-5112.location
  
  subnet_id =  module.network-5112.subnet_id
  storage_account_uri = module.common-5112.storage_account-primary_blob_endpoint
  
  common_tags = local.common_tags
}

module "vmwindows-5112" {
  source = "./modules/vmwindows-5112"
  
  resource_group_name = module.rgroup-5112.resource_group_name
  location = module.rgroup-5112.location
  
  subnet_id =  module.network-5112.subnet_id
  storage_account_uri = module.common-5112.storage_account-primary_blob_endpoint
  
  common_tags = local.common_tags
}

module "datadisk-5112" {
  source = "./modules/datadisk-5112"
  
  resource_group_name = module.rgroup-5112.resource_group_name
  location = module.rgroup-5112.location

  linux_vm_ids        = module.vmlinux-5112.vmlinux.ids 
  windows_vm_ids      = module.vmwindows-5112.windows.ids
  
  all_vm_ids = concat(module.vmlinux-5112.vmlinux.ids, module.vmwindows-5112.windows.ids) 
  common_tags = local.common_tags
}

module "loadbalancer-5112" {
  source              = "./modules/loadbalancer-5112"
  
  resource_group_name = module.rgroup-5112.resource_group_name
  location = module.rgroup-5112.location
 
  linux_vm_nic_ids        = module.vmlinux-5112.vmlinux-nic-ids
  linux_vm_name           = module.vmlinux-5112.vmlinux.hostnames
  common_tags = local.common_tags
}

module "database-5112" {
  source                       = "./modules/database-5112"
  
  resource_group_name = module.rgroup-5112.resource_group_name
  location = module.rgroup-5112.location

  common_tags = local.common_tags
}


