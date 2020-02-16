variable "ami" {}
variable "availability_zone" {}
variable "associate_public_ip_address" {}

variable "cpu_core_count" {
  default = "1"
}

variable "cpu_threads_per_core" {
  default = "1"
}

variable "cpu_credits" {
  default = "standard"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ipv6_address_count" {
  default = "0"
}

variable "subnet_id" {}
variable "key_name" {}
variable "volume_size" {}
variable "volume_type" {}
variable "tenancy" {
  default = "default"
}
variable "security_group_id" {
  
}
