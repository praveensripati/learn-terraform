variable "ami" {
  description = "ami for ec2"
  type        = string
  default     = "ami-003d3d03cfe1b0468"
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