resource "aws_default_route_table" "main" {
  default_route_table_id = var.route_id

  route {
    cidr_block = var.cidr_blocks
    gateway_id = var.gateway_id
  }

  tags = {
    Name = var.name
  }
}
