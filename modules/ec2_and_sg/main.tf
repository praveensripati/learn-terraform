module "my_security_group" {
  source             = "../../modules/security_group"

  ingress_from__port = var.ingress_from__port
  ingress_to__port = var.ingress_to__port
  security_group_name = var.security_group_name
  cidr_ipv4 = var.cidr_ipv4
}

module "my_ec2_instance" {
  source             = "../../modules/ec2_instance"

  ami = var.ami
  instance_type = var.instance_type
  security_group_id = module.my_security_group.security_group_id
}
