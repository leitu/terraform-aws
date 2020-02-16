module "vpc" {
    source = "./vpc"
    name = var.vpc_name
    instance_tenancy = var.vpc_instance_tenancy
    cidr_block = var.vpc_cidr_block
}

module "subnet" {
    source = "./subnet"
    cidr_block = var.subnet_cidr_block
    vpc_id = module.vpc.vpc_id
    name = var.subnet_name
    availability_zone = var.availability_zone
}

module "sg" {
    source = "./sg"
    cidr_blocks = var.access_cidr_blocks
    vpc_id = module.vpc.vpc_id
}

module "igw" {
    source = "./igw"
    vpc_id = module.vpc.vpc_id
    name = var.igw_name
}

module "routertable" {
    source = "./router_table"
    cidr_blocks = var.internet_gateway_cidr_blocks
    route_id = module.vpc.router_id
    gateway_id = module.igw.igw_id
    name = var.router_table_name
}

module "ec2" {
    source = "./ec2_instance"
    ami = var.ami
    availability_zone = var.availability_zone
    associate_public_ip_address = var.associate_public_ip_address
    subnet_id = module.subnet.subnet_id
    key_name = var.key_name
    volume_size = var.volume_size
    volume_type = var.volume_type
    security_group_id = module.sg.security_group_id
}