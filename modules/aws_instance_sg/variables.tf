variable "instance_count" {
  type = number
  description = "The number of needed instances"
  default = 1
}

variable "ami" {
  type = string
  description = "AMI for the created instances"
  default = "ami-0500f74cc2b89fb6b"
}

variable "instance_type" {
  type = string
  description = "Instance Tyoe"
}

variable "subnet_ids" {
  type = string
  description = "ID of the subnet to use"
}

variable "associate_public_ip_address" {
  type = bool
  description = "Flag to associate a public IP with the instance"
  default = true
}

variable "user_data" {
  type = string
  description = "User data"
  default = <<-EOF
              #!/bin/bash
              echo "Hello World"
              EOF
}

variable "user_data_replace_on_change" {
  type = bool
  description = "Flag to replace the user date on change"
  default = true
}

variable "sg_name" {
  type = string
  description = "Security group name"
}

variable "vpc_id" {
  type = string
  description = "VPC ID to use"
}

variable "sg_from_port" {
  type = number
  description = "Security group From port"
  default = 8080
}

variable "sg_to_port" {
  type = number
  description = "Security group To port"
  default = 65535
}

variable "sg_protocol" {
  type = string
  description = "Security group protocol"
  default = "tcp"
}

variable "sg_cidr_block" {
  type = list(string)
  description = "Security group Cidr block"
  default = ["0.0.0.0/0"]
}