# AWS Provider 설정
provider "aws" {
  region = "ap-northeast-2"  # AWS 리전을 대한민국 서울로 설정
}

# VPC 리소스 생성
resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"  # VPC의 IP 주소 범위 설정
  tags = {
    Name = "myVPC"  # 리소스에 대한 태그 설정
  }
}

# Subnet 리소스 생성
resource "aws_subnet" "my_subnet" {
  vpc_id            = aws_vpc.my_vpc.id  # VPC ID를 참조하여 Subnet을 해당 VPC에 연결
  cidr_block        = "172.16.10.0/24"  # Subnet의 IP 주소 범위 설정
  availability_zone = "ap-northeast-2a"  # Subnet이 위치할 가용 영역 설정
  tags = {
    Name = "mySubnet"  # 리소스에 대한 태그 설정
  }
}

# Ubuntu Instance 생성
resource "aws_instance" "ubuntu" {
  ami           = "ami-0225bc2990c54ce9a"  # Ubuntu 20.04 AMI ID 설정
  instance_type = "t2.micro"  # EC2 Instance 유형 설정

  subnet_id     = aws_subnet.my_subnet.id  # 생성한 Subnet에 인스턴스 배치
  tags = {
    Name = "myUbuntu"  # 리소스에 대한 태그 설정
  }
}