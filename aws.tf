provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"
  tags = {
    Name = "myVPC"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    Name = "mySubnet"
  }
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-0225bc2990c54ce9a" # ubuntu 20.04 (64bit, x86)
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet.id

  tags = {
    Name = "myUbuntu"
  }
}