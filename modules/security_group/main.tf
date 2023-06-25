resource "aws_security_group" "linux_ssh" {
  name = var.security_group_name
  vpc_id = "vpc-8ad25df7"
}

resource "aws_vpc_security_group_ingress_rule" "example" {
  security_group_id = aws_security_group.linux_ssh.id

  cidr_ipv4   = "10.0.0.0/8"
  from_port   = var.ingress_from__port
  ip_protocol = "tcp"
  to_port     = var.ingress_to__port
}
