provider "aws" {
    region = "us-east-1"
    access_key= "AKIA3WIM6QE7NXHXNII7"
    secret_key = "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"
}

variable "subnet_cidr_block" {
    description = "sunet cidr block"
}

resource "aws_vpc" "developmen_vpc" {
    cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.developmen_vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = "us-east-1a"
}


output "dev-vpc-id" {
    value= aws_vpc.developmen_vpc.id
}

output "dev-subnet-id" {
    value= aws_subnet.dev-subnet-1.id
}