variable "aws_vpc" {
    default = "aws_vpc.c_vpc"
  }


variable "cidr_block" {
  default = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24"]
}


variable "availability_zone" {
 default =  ["eu-west-2a", "eu-west-2b"]
}

variable "instance_type" {
  default = "t2.micro"
}

variable "keyname" {
    default = "chioma_keypair"
}