output "myserver_qa" {
  value = module.qa_compute.myserver_qa
}

output "security_group_id" {
  value = module.qa_security.security_group_id
}
