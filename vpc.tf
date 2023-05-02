resource "aws_vpc" "myapp_vpc" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "${var.env_prefix}-vpc"
  }
}

module "myapp_subnet" {
  source            = "./modules/subnet"
  vpc_id            = aws_vpc.myapp_vpc.id
  subnet_cidr_block = var.subnet_cidr_block
  availability_zone = var.availability_zone_1
  env_prefix        = var.env_prefix
}

resource "aws_route_table_association" "rtb_subnet_a" {
  subnet_id      = module.myapp_subnet.subnet_output.id
  route_table_id = module.myapp_subnet.route_table_output.id
}