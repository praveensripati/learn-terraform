output "instance_id" {
  value = module.my_ec2_and_sg.instance_id
}

output "security_group_id" {
  value = module.my_ec2_and_sg.security_group_id
}
