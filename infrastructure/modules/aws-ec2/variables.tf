variable "key_name" {
  type        = string
  description = "SSH key name to import"
}

variable "ami" {
  type        = string
  description = "AMI ID to use for the EC2 instance"
}

variable "instance_type" {
  type        = string
  description = "Instance type for the EC2 instance"
}

variable "vpc_security_group_ids" {
  type        = list(string)
  description = "List of SGs to attach to the instance"
}
