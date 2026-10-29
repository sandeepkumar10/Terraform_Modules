output "myserver_intg" {
  value = module.intg_compute.myserver_intg
}

output "security_group_id" {
  value = module.intg_security.security_group_id
}

