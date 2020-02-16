resource "aws_subnet" "main" {
  assign_ipv6_address_on_creation = "false"
  cidr_block                      = var.cidr_block
  map_public_ip_on_launch         = "false"
  availability_zone   = var.availability_zone

  tags = {
    Name = var.name
  }

  vpc_id = var.vpc_id
}
