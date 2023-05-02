variable "vpc_id" {
  type        = string
  description = "vpc id"
}

variable "subnet_cidr_block" {
  type        = string
  description = "subnet cidr block"
}

variable "availability_zone" {
  type        = string
  description = "availability zone"
}

variable "env_prefix" {
  type        = string
  description = "deployment environment"
}