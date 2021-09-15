# VPC biviholding
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

#####Subnet Public PROD

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

#####Subnet Public PRD
#SUBNET PROD-PUB-A
resource "aws_subnet" "PROD-PUB-A" {
  vpc_id            = aws_vpc.biviholding.id
  cidr_block        = var.PROD-PUB-A
  availability_zone = "us-east-1a"

  tags = {
    Name     = "PROD-PUB-A"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-B
resource "aws_subnet" "PROD-PUB-B" {
  vpc_id            = aws_vpc.biviholding.id
  cidr_block        = var.PROD-PUB-B
  availability_zone = "us-east-1b"

  tags = {
    Name     = "PROD-PUB-B"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-C
resource "aws_subnet" "PROD-PUB-C" {
  vpc_id            = aws_vpc.biviholding.id
  cidr_block        = var.PROD-PUB-C
  availability_zone = "us-east-1c"

  tags = {
    Name     = "PROD-PUB-C"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-E
resource "aws_subnet" "PROD-PUB-E" {
  vpc_id            = aws_vpc.biviholding.id
  cidr_block        = var.PROD-PUB-E
  availability_zone = "us-east-1e"

  tags = {
    Name     = "PROD-PUB-E"
    NameArea = "Infra"
  }
}


#####Subnet Public DEV
#SUBNET DEV-PUB-D
resource "aws_subnet" "DEV-PUB-D" {
  vpc_id            = aws_vpc.biviholding.id
  cidr_block        = var.DEV-PUB-D
  availability_zone = "us-east-1d"

  tags = {
    Name     = "DEV-PUB-D"
    NameArea = "Infra"
  }
}

#SUBNET DEV-PUB-E
resource "aws_subnet" "DEV-PUB-E" {
  vpc_id            = aws_vpc.biviholding.id
  cidr_block        = var.DEV-PUB-E
  availability_zone = "us-east-1e"

  tags = {
    Name     = "DEV-PUB-E"
    NameArea = "Infra"
  }
}

#####Subnet Public HML
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

resource "aws_subnet" "HML-PUB-E" {
  vpc_id            = aws_vpc.biviholding.id
  cidr_block        = var.HML-PUB-E
  availability_zone = "us-east-1e"

  tags = {
    Name     = "HML-PUB-E"
    NameArea = "Infra"
  }
}

#####Subnet Private PROD
#SUBNET PROD-PRV-A
resource "aws_subnet" "PROD-PRV-A" {
  vpc_id                  = aws_vpc.biviholding.id
  cidr_block              = var.PROD-PRV-A
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false


  tags = {
    Name     = "PROD-PRV-A"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PRV-B
resource "aws_subnet" "PROD-PRV-B" {
  vpc_id                  = aws_vpc.biviholding.id
  cidr_block              = var.PROD-PRV-B
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name     = "PROD-PRV-B"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PRV-C
resource "aws_subnet" "PROD-PRV-C" {
  vpc_id                  = aws_vpc.biviholding.id
  cidr_block              = var.PROD-PRV-C
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = false

  tags = {
    Name     = "PROD-PRV-C"
    NameArea = "Infra"
  }
}

#####Subnet Private DEV

#####Subnet Private HML
#SUBNET HML-PRIV-A
resource "aws_subnet" "HML-PRV-A" {
  vpc_id                  = aws_vpc.biviholding.id
  cidr_block              = var.HML-PRV-A
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name     = "HML-PRV-A"
    NameArea = "Infra"
  }
}

#####Subnet Private HML
#SUBNET HML-PRV-B
resource "aws_subnet" "HML-PRV-B" {
  vpc_id                  = aws_vpc.biviholding.id
  cidr_block              = var.HML-PRV-B
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name     = "HML-PRV-B"
    NameArea = "Infra"
  }
}

#####Subnet Private HML
#SUBNET HML-PRV-C
resource "aws_subnet" "HML-PRV-C" {
  vpc_id            = aws_vpc.biviholding.id
  cidr_block        = var.HML-PRV-C
  availability_zone = "us-east-1c"
  #map_public_ip_on_launch = false

  tags = {
    Name     = "HML-PRV-C"
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

#### Grupo de seguranca 
resource "aws_security_group" "sgvpcbiviholding" {
  name        = "sgvpcbiviholding"
  description = "Allow sg-vpc-biviholding"
  vpc_id      = aws_vpc.biviholding.id

  ingress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    self      = true
  }

  egress {
    from_port = "0"
    to_port   = "0"
    protocol  = "-1"
    self      = "true"
  }

  tags = {
    NameArea = "Infra"
  }
}


#Route table public
resource "aws_route_table" "rt-biviholding-public" {
  vpc_id = aws_vpc.biviholding.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-biviholding.id
  }

  route {
    cidr_block = "172.31.0.0/24"
    gateway_id = aws_vpn_gateway.OracleCloud.id
    #gateway_id = aws_vpn_gateway.aws_vpn_gateway.id
  }

  tags = {
    NameArea = "Infra"
    Name     = "rt-biviholding-public"
  }
}

#Route table private
resource "aws_route_table" "rt-biviholding-private" {
  vpc_id = aws_vpc.biviholding.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw-biviholding.id
  }

  route {
    cidr_block = "172.31.0.0/24"
    gateway_id = aws_vpn_gateway.OracleCloud.id
    #gateway_id = aws_vpn_gateway.aws_vpn_gateway.id
  }
  tags = {
    NameArea = "Infra"
    Name     = "rt-biviholding-private"
  }
}


#route table default VPC

# terraform aws associate subnet with route table PUBLIC

#### Subnet PROD PUB 
resource "aws_route_table_association" "rt-prod-pub-a" {
  subnet_id      = aws_subnet.PROD-PUB-A.id
  route_table_id = aws_route_table.rt-biviholding-public.id
}

resource "aws_route_table_association" "rt-prod-pub-b" {
  subnet_id      = aws_subnet.PROD-PUB-B.id
  route_table_id = aws_route_table.rt-biviholding-public.id
}

resource "aws_route_table_association" "rt-prod-pub-c" {
  subnet_id      = aws_subnet.PROD-PUB-C.id
  route_table_id = aws_route_table.rt-biviholding-public.id
}

resource "aws_route_table_association" "rt-prod-pub-d" {
  subnet_id      = aws_subnet.PROD-PUB-D.id
  route_table_id = aws_route_table.rt-biviholding-public.id
}

resource "aws_route_table_association" "rt-prod-pub-e" {
  subnet_id      = aws_subnet.PROD-PUB-E.id
  route_table_id = aws_route_table.rt-biviholding-public.id
}

#### Subnet HML PUB
resource "aws_route_table_association" "rt-hml-pub-d" {
  subnet_id      = aws_subnet.HML-PUB-D.id
  route_table_id = aws_route_table.rt-biviholding-public.id
}

resource "aws_route_table_association" "rt-hml-pub-e" {
  subnet_id      = aws_subnet.HML-PUB-E.id
  route_table_id = aws_route_table.rt-biviholding-public.id
}

#### Subnet DEV PUB
resource "aws_route_table_association" "rt-dev-pub-d" {
  subnet_id      = aws_subnet.DEV-PUB-D.id
  route_table_id = aws_route_table.rt-biviholding-public.id
}

resource "aws_route_table_association" "rt-dev-pub-e" {
  subnet_id      = aws_subnet.DEV-PUB-E.id
  route_table_id = aws_route_table.rt-biviholding-public.id
}

# terraform aws associate subnet with route table PRIVATE
#### Subnet HML PRIVATE
resource "aws_route_table_association" "rt-hml-prv-a" {
  subnet_id      = aws_subnet.HML-PRV-A.id
  route_table_id = aws_route_table.rt-biviholding-private.id
}

resource "aws_route_table_association" "rt-hml-prv-b" {
  subnet_id      = aws_subnet.HML-PRV-B.id
  route_table_id = aws_route_table.rt-biviholding-private.id
}

resource "aws_route_table_association" "rt-hml-prv-c" {
  subnet_id      = aws_subnet.HML-PRV-C.id
  route_table_id = aws_route_table.rt-biviholding-private.id
}

#### Subnet PROD PRIVATE
resource "aws_route_table_association" "rt-prod-prv-a" {
  subnet_id      = aws_subnet.PROD-PRV-A.id
  route_table_id = aws_route_table.rt-biviholding-private.id
}

resource "aws_route_table_association" "rt-prod-prv-b" {
  subnet_id      = aws_subnet.PROD-PRV-B.id
  route_table_id = aws_route_table.rt-biviholding-private.id
}

#resource "aws_route_table_association" "rt-prod-prv-c" {
#  subnet_id      = aws_subnet.PROD-PRV-C.id
#  route_table_id = aws_route_table.rt-biviholding-private.id
#}
