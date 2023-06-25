output "instance_id" {
  value = module.my_ec2_instance.instance_id
}

output "security_group_id" {
  value = module.my_security_group.security_group_id
}
