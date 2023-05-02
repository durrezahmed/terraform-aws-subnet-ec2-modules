module "myapp_server" {
  source            = "./modules/webserver"
  vpc_id            = aws_vpc.myapp_vpc.id
  my_ip             = var.my_ip
  env_prefix        = var.env_prefix
  public_key_path   = var.public_key_path
  image_name        = var.image_name
  instance_type     = var.instance_type
  subnet_id         = module.myapp_subnet.subnet_output.id
  availability_zone = var.availability_zone_1
}