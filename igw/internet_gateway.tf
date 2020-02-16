resource "aws_internet_gateway" "main" {
  tags = {
    Name = var.name
  }

  vpc_id = var.vpc_id
}
