variable "region" {
  type        = string
  description = "aws region"
}

variable "env_prefix" {
  type        = string
  description = "deployment environment"
}

variable "vpc_cidr_block" {
  type        = string
  description = "vpc cidr block"
}

variable "subnet_cidr_block" {
  type        = string
  description = "subnet cidr block"
}

variable "availability_zone_1" {
  type        = string
  description = "availability zone 1"
}

variable "my_ip" {
  type        = string
  description = "my ip address"
}

variable "instance_type" {
  type        = string
  description = "ec2 instance type"
}

variable "image_name" {
  type        = string
  description = "ec2 instance image name"
}

variable "public_key_path" {
  type        = string
  description = "public key path"
}

variable "private_key_path" {
  type        = string
  description = "private key path"
}