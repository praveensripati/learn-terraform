variable "ingress_from__port" {
  description = "Ingres from port"
  type        = number
  default     = "1234"
}

variable "ingress_to__port" {
  description = "Ingres from port"
  type        = number
  default     = "5678"
}

variable "security_group_name" {
  description = "Security Group name"
  type        = string
  default     = "Default Security Group Name"
}

variable "ami" {
  description = "ami"
  type        = string
  default     = "ami-022e1a32d3f742bd8"
}

variable "instance_type" {
  description = "instance_type"
  type        = string
  default     = "t2.micro"
}
