variable "ami" {
  description = "ami for ec2"
  type        = string
  default     = "ami-022e1a32d3f742bd8"
}

variable "instance_type" {
  description = "instance type"
  type        = string
  default     = "t2.micro"
}

variable "security_group_id" {
  description = "security group id"
  type        = string
}