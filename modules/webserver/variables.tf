variable "vpc_id" {
  type        = string
  description = "vpc id"
}

variable "my_ip" {
  type        = string
  description = "my ip address"
}

variable "env_prefix" {
  type        = string
  description = "deployment environment"
}

variable "public_key_path" {
  type        = string
  description = "public key path"
}

variable "image_name" {
  type        = string
  description = "ec2 instance image name"
}

variable "instance_type" {
  type        = string
  description = "ec2 instance type"
}

variable "subnet_id" {
  type        = string
  description = "subnet id"
}

variable "availability_zone" {
  type        = string
  description = "availability zone"
}