variable "instance_type" {
  type = string
  description = "Instance Type"
  default = "t2.micro"
}

variable "sg_name" {
  type = string
  description = "Security group name"
  default = "sg1dev"
}

variable "instance_count" {
  type = number
  description = "Number of instances to create in the dev env"
  default = 3
}