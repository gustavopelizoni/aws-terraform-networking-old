#VPC biviholding
resource "aws_vpc" "biviholding" {
  cidr_block = "10.250.0.0/17"

  tags = {
    Name : "biviholding"
    NameArea : "Infra"
    NameVPC : "biviholding"
  }
}

#SUBNET PROD-PRV-A
resource "aws_subnet" "PROD-PRV-A" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.0.0/21"

  tags = {
    Name     = "PROD-PRV-A"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PRV-B
resource "aws_subnet" "PROD-PRV-B" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.8.0/21"

  tags = {
    Name     = "PROD-PRV-B"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PRV-C
resource "aws_subnet" "PROD-PRV-C" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.16.0/21"

  tags = {
    Name     = "PROD-PRV-C"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-A
resource "aws_subnet" "PROD-PUB-A" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.80.0/21"

  tags = {
    Name     = "PROD-PUB-A"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-B
resource "aws_subnet" "PROD-PUB-B" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.88.0/21"

  tags = {
    Name     = "PROD-PUB-B"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-C
resource "aws_subnet" "PROD-PUB-C" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.96.0/21"

  tags = {
    Name     = "PROD-PUB-C"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-D
resource "aws_subnet" "PROD-PUB-D" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.24.0/21"

  tags = {
    Name     = "PROD-PUB-D"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-E
resource "aws_subnet" "PROD-PUB-E" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.32.0/21"

  tags = {
    Name     = "PROD-PUB-E"
    NameArea = "Infra"
  }
}

#SUBNET POC
resource "aws_subnet" "POC" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.120.0/21"

  tags = {
    Name     = "POC"
    NameArea = "Infra"
  }
}

#SUBNET DEV-PUB-D
resource "aws_subnet" "DEV-PUB-D" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.104.0/21"

  tags = {
    Name     = "DEV-PUB-D"
    NameArea = "Infra"
  }
}

#SUBNET DEV-PUB-E
resource "aws_subnet" "DEV-PUB-E" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.112.0/21"

  tags = {
    Name     = "DEV-PUB-E"
    NameArea = "Infra"
  }
}

#SUBNET HML-PRIV-A
resource "aws_subnet" "HML-PRIV-A" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.40.0/21"

  tags = {
    Name     = "HML-PRIV-A"
    NameArea = "Infra"
  }
}

#SUBNET HML-PRIV-B
resource "aws_subnet" "HML-PRIV-B" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.48.0/21"

  tags = {
    Name     = "HML-PRIV-B"
    NameArea = "Infra"
  }
}

#SUBNET HML-PRIV-C
resource "aws_subnet" "HML-PRIV-C" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.56.0/21"

  tags = {
    Name     = "HML-PRIV-C"
    NameArea = "Infra"
  }
}

#SUBNET HML-PUB-D
resource "aws_subnet" "HML-PUB-D" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.64.0/21"

  tags = {
    Name     = "HML-PUB-D"
    NameArea = "Infra"
  }
}


#SUBNET HML-PUB-E
resource "aws_subnet" "HML-PUB-E" {
  vpc_id     = aws_vpc.biviholding.id
  cidr_block = "10.250.72.0/21"

  tags = {
    Name     = "HML-PUB-E"
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

#Route Table public ???
