output "ec2_public_ip" {
  value = module.myapp_server.instance_output.public_ip
}