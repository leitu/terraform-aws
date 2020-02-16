resource "aws_instance" "main" {
  ami                         = var.ami
  associate_public_ip_address = var.associate_public_ip_address
  availability_zone           = var.availability_zone
  //cpu_core_count              = var.cpu_core_count
  //cpu_threads_per_core        = var.cpu_threads_per_core

  //credit_specification {
  //  cpu_credits = var.cpu_credits
  //}

  disable_api_termination = "false"
  ebs_optimized           = "false"
  get_password_data       = "false"
  hibernation             = "false"
  instance_type           = var.instance_type
  ipv6_address_count      = var.ipv6_address_count
  key_name                = var.key_name
  monitoring              = "false"

  root_block_device {
    delete_on_termination = "true"
    encrypted             = "false"
    iops                  = "100"
    volume_size           = var.volume_size
    volume_type           = var.volume_type
  }

  source_dest_check      = "true"
  subnet_id              = var.subnet_id
  tenancy                = var.tenancy
  vpc_security_group_ids = [var.security_group_id]
}
