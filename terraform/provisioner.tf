resource "null_resource" "ansible" {
  provisioner "local-exec" {
    command = "/bin/bash ~/automation/Project/ansible/runansible.sh"
    
  }
  depends_on = [
    module.rgroup-5112,
    module.datadisk-5112,
    module.vmlinux-5112
  ]
}