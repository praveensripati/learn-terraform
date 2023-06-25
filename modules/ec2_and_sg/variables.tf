variable "ingress_from__port" {
  description = "Ingres from port"
  type        = number
  default     = "1234"
}

variable "ingress_to__port" {
  description = "Ingres to port"
  type        = number
  default     = "1234"
}

variable "security_group_name" {
  description = "Security group name"
  type        = string
  default     = "My Security Group"
}

variable "ami" {
  description = "ami"
  type        = string
  default     = "ami-003d3d03cfe1b0468"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}