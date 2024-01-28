variable "instance_type" {
  type = string
  description = "Instance Type"
  default = "t3.large"
}

variable "sg_name" {
  type = string
  description = "Security group name"
  default = "sg1prod"
}

variable "instance_count" {
  type = number
  description = "Number of instances to create in the dev env"
  default = 3
}