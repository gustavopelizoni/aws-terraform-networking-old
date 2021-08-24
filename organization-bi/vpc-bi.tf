# VPC biviholding
# Create VPC
# terraform aws create vpc
resource "aws_vpc" "biviholding" {
  cidr_block           = var.vpc-biviholding
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name : "biviholding"
    NameArea : "Infra"
    NameVPC : "biviholding"
  }
}

#Internet GATEWAY
resource "aws_internet_gateway" "igw-biviholding" {
  vpc_id = aws_vpc.biviholding.id

  tags = {
    Name     = "igw-biviholding"
    NameArea = "Infra"
  }
}


#####Subnet Public

#SUBNET PROD-PUB-D
resource "aws_subnet" "PROD-PUB-D" {
  vpc_id            = aws_vpc.biviholding.id
  cidr_block        = var.PROD-PUB-D
  availability_zone = "us-east-1d"

  tags = {
    Name     = "PROD-PUB-D"
    NameArea = "Infra"
  }
}

#SUBNET HML-PUB-D
resource "aws_subnet" "HML-PUB-D" {
  vpc_id            = aws_vpc.biviholding.id
  cidr_block        = var.HML-PUB-D
  availability_zone = "us-east-1d"

  tags = {
    Name     = "HML-PUB-D"
    NameArea = "Infra"
  }
}

#####Subnet Private

#SUBNET HML-PRIV-C
resource "aws_subnet" "HML-PRIV-C" {
  vpc_id                  = aws_vpc.biviholding.id
  cidr_block              = var.HML-PRIV-C
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = false

  tags = {
    Name     = "HML-PRIV-C"
    NameArea = "Infra"
  }
}

#Elastic IP Nat Gateway
resource "aws_eip" "Nat_biviholding" {
  vpc = true
  depends_on = [
    aws_internet_gateway.igw-biviholding
  ]

  tags = {
    Name          = "Nat_biviholding"
    NameArea      = "Infra"
    NameElasticIP = "NameElasticIP"
  }
}

#Nat Gateway
resource "aws_nat_gateway" "nat-gw-biviholding" {
  allocation_id = aws_eip.Nat_biviholding.id
  subnet_id     = aws_subnet.PROD-PUB-D.id

  tags = {
    Name     = "nat-gw-biviholding"
    NameArea = "Infra"
    NameNat  = "nat-gw-biviholding"
  }

}


resource "aws_security_group" "sg-vpc-biviholding" {
  name        = "sg-vpc-biviholding"
  description = "Allow sg-vpc-biviholding"
  vpc_id      = aws_vpc.biviholding

  ingress = [
    {
      description      = "sg-vpc-biviholding"
      from_port        = 443
      to_port          = 443
      protocol         = "tcp"
      cidr_blocks      = [aws_vpc.main.cidr_block]
      ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
    }
  ]

  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  ]

  tags = {
    NameArea = "Infra"
  }
}


#Route table create
resource "aws_route_table" "rt-biviholding-public" {
  vpc_id = aws_vpc.biviholding.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-biviholding.id
  }

  tags = {
    NameArea = "Infra"
  }
}

# terraform aws associate subnet with route table
resource "aws_route_table_association" "rt-hml-pub-d" {
  subnet_id      = aws_subnet.HML-PUB-D.id
  route_table_id = aws_route_table.rt-biviholding-public.id
}

# terraform aws associate subnet with route table
resource "aws_route_table_association" "rt-prod-pub-d" {
  subnet_id      = aws_subnet.PROD-PUB-D.id
  route_table_id = aws_route_table.rt-biviholding-public.id
}
