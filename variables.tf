variable "ingress_from__port" {
  description = "Ingres from port"
  type        = number
  default     = "1234"
}

variable "ingress_to__port" {
  description = "Ingres to port"
  type        = number
  default     = "1234"

  validation {
    condition     = var.ingress_to__port > 0
    error_message = "The port number should be greater than 0"
  }

}

variable "security_group_name" {
  description = "Security Group name"
  type        = string
  default     = "Default Security Group Name"
}

variable "instance_type" {
  description = "instance_type"
  type        = string
  default     = "t2.micro"
}

variable "cidr_ipv4" {
  description = "CIDR IPV4"
  type        = string
  default     = "0.0.0.0/0"
}