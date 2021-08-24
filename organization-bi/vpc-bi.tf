#VPC biviholding
resource "aws_vpc" "biviholding" {
  cidr_block = "10.251.0.0/17"
  enable_dns_hostnames = true

  tags = {
    Name : "biviholding"
    NameArea : "Infra"
    NameVPC : "biviholding"
  }
}

#SUBNET PROD-PUB-D
resource "aws_subnet" "PROD-PUB-D" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.251.24.0/21"

  tags = {
    Name     = "PROD-PUB-D"
    NameArea = "Infra"
  }
}

#SUBNET HML-PRIV-C
resource "aws_subnet" "HML-PRIV-C" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.251.56.0/21"

  tags = {
    Name     = "HML-PRIV-C"
    NameArea = "Infra"
  }
}

#SUBNET HML-PUB-D
resource "aws_subnet" "HML-PUB-D" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.251.64.0/21"

  tags = {
    Name     = "HML-PUB-D"
    NameArea = "Infra"
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


#GRUPO DE SEGURANCA VPC

resource "aws_security_group" "vpc-biviholding" {
  name = "vpc-biviholding"
  vpc_id = aws_vpc.biviholding
  tags = {
  NameArea = "Infra"

}

  
}