variable "vpc_cidr_block" {
  type = string
  description = "Cidr block for VPC"
  default = "10.0.0.0/24"
}

variable "subnet_cidr_block" {
  type = string
  description = "Cidr block for subnet"
  default = "10.0.0.0/28"
}

variable "route_table_cidr_block" {
  type = string
  description = "Cidr block for route table"
  default = "0.0.0.0/0"
}

variable "subnet_availability_zone" {
  type = string
  description = "Availability zone for the subnet"
  default = "eu-west-2c"
}

variable "enable_dns_hostnames" {
  type = bool
  description = "Flag to enable dns hostnames"
  default = true
}

variable "enable_dns_support" {
  type = bool
  description = "Flag to enable dns support"
  default = true
}

