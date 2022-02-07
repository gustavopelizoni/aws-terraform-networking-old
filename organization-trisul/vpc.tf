# VPC Trisul
# terraform aws create vpc
resource "aws_vpc" "trisul" {
  cidr_block           = var.vpc-trisul
  instance_tenancy     = "default"
  enable_dns_hostnames = true

  tags = {
    Name : "vpc-trisul"
    NameArea : "Infra"
    NameVPC : "trisul"
  }
}

#####Subnet Public PRD
#SUBNET PROD-PUB-A
resource "aws_subnet" "PROD-PUB-A" {
  vpc_id            = aws_vpc.trisul.id
  cidr_block        = var.PROD-PUB-A
  availability_zone = "us-east-1a"

  tags = {
    Name     = "PROD-PUB-A"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-B
resource "aws_subnet" "PROD-PUB-B" {
  vpc_id            = aws_vpc.trisul.id
  cidr_block        = var.PROD-PUB-B
  availability_zone = "us-east-1b"

  tags = {
    Name     = "PROD-PUB-B"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-C
resource "aws_subnet" "PROD-PUB-C" {
  vpc_id            = aws_vpc.trisul.id
  cidr_block        = var.PROD-PUB-C
  availability_zone = "us-east-1c"

  tags = {
    Name     = "PROD-PUB-C"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-D
resource "aws_subnet" "PROD-PUB-D" {
  vpc_id            = aws_vpc.trisul.id
  cidr_block        = var.PROD-PUB-D
  availability_zone = "us-east-1d"

  tags = {
    Name     = "PROD-PUB-D"
    NameArea = "Infra"
  }
}

#SUBNET PROD-PUB-E
resource "aws_subnet" "PROD-PUB-E" {
  vpc_id            = aws_vpc.trisul.id
  cidr_block        = var.PROD-PUB-E
  availability_zone = "us-east-1e"

  tags = {
    Name     = "PROD-PUB-E"
    NameArea = "Infra"
  }
}

#####Subnet Public DEV
#SUBNET DEV-PUB-C
resource "aws_subnet" "DEV-PUB-C" {
  vpc_id            = aws_vpc.trisul.id
  cidr_block        = var.DEV-PUB-C
  availability_zone = "us-east-1c"

  tags = {
    Name     = "DEV-PUB-C"
    NameArea = "Infra"
  }
}

#SUBNET DEV-PUB-D
resource "aws_subnet" "DEV-PUB-D" {
  vpc_id            = aws_vpc.trisul.id
  cidr_block        = var.DEV-PUB-D
  availability_zone = "us-east-1d"

  tags = {
    Name     = "DEV-PUB-D"
    NameArea = "Infra"
  }
}

#SUBNET DEV-PUB-E
resource "aws_subnet" "DEV-PUB-E" {
  vpc_id            = aws_vpc.trisul.id
  cidr_block        = var.DEV-PUB-E
  availability_zone = "us-east-1e"

  tags = {
    Name     = "DEV-PUB-E"
    NameArea = "Infra"
  }
}

#####Subnet Public HML
#SUBNET HML-PUB-C
resource "aws_subnet" "HML-PUB-C" {
  vpc_id            = aws_vpc.trisul.id
  cidr_block        = var.HML-PUB-C
  availability_zone = "us-east-1c"

  tags = {
    Name     = "HML-PUB-C"
    NameArea = "Infra"
  }
}
#SUBNET HML-PUB-D
resource "aws_subnet" "HML-PUB-D" {
  vpc_id            = aws_vpc.trisul.id
  cidr_block        = var.HML-PUB-D
  availability_zone = "us-east-1d"

  tags = {
    Name     = "HML-PUB-D"
    NameArea = "Infra"
  }
}

resource "aws_subnet" "HML-PUB-E" {
  vpc_id            = aws_vpc.trisul.id
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
  vpc_id                  = aws_vpc.trisul.id
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
  vpc_id                  = aws_vpc.trisul.id
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
  vpc_id                  = aws_vpc.trisul.id
  cidr_block              = var.PROD-PRV-C
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = false

  tags = {
    Name     = "PROD-PRV-C"
    NameArea = "Infra"
  }
}

#####Subnet Private DEV
#SUBNET DEV-PRV-A
resource "aws_subnet" "DEV-PRV-A" {
  vpc_id                  = aws_vpc.trisul.id
  cidr_block              = var.DEV-PRV-A
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name     = "DEV-PRV-A"
    NameArea = "Infra"
  }
}

#SUBNET DEV-PRV-B
resource "aws_subnet" "DEV-PRV-B" {
  vpc_id                  = aws_vpc.trisul.id
  cidr_block              = var.DEV-PRV-B
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name     = "DEV-PRV-b"
    NameArea = "Infra"
  }
}

#SUBNET DEV-PRV-C
resource "aws_subnet" "DEV-PRV-C" {
  vpc_id                  = aws_vpc.trisul.id
  cidr_block              = var.DEV-PRV-C
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = false

  tags = {
    Name     = "DEV-PRV-C"
    NameArea = "Infra"
  }
}

#####Subnet Private HML
#SUBNET HML-PRIV-A
resource "aws_subnet" "HML-PRV-A" {
  vpc_id                  = aws_vpc.trisul.id
  cidr_block              = var.HML-PRV-A
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

  tags = {
    Name     = "HML-PRV-A"
    NameArea = "Infra"
  }
}

#SUBNET HML-PRV-B
resource "aws_subnet" "HML-PRV-B" {
  vpc_id                  = aws_vpc.trisul.id
  cidr_block              = var.HML-PRV-B
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

  tags = {
    Name     = "HML-PRV-B"
    NameArea = "Infra"
  }
}

#SUBNET HML-PRV-C
resource "aws_subnet" "HML-PRV-C" {
  vpc_id            = aws_vpc.trisul.id
  cidr_block        = var.HML-PRV-C
  availability_zone = "us-east-1c"
  #map_public_ip_on_launch = false

  tags = {
    Name     = "HML-PRV-C"
    NameArea = "Infra"
  }
}



#Internet GATEWAY
resource "aws_internet_gateway" "igw-trisul" {
  vpc_id = aws_vpc.trisul.id

  tags = {
    Name     = "igw-trisul"
    NameArea = "Infra"
  }
}

#Elastic IP Nat Gateway
resource "aws_eip" "Nat_trisul" {
  vpc = true
  depends_on = [
    aws_internet_gateway.igw-trisul
  ]

  tags = {
    Name          = "Nat_trisul"
    NameArea      = "Infra"
    NameElasticIP = "Nat_trisul"
  }
}

#Nat Gateway
resource "aws_nat_gateway" "nat-gw-trisul" {
  allocation_id = aws_eip.Nat_trisul.id
  subnet_id     = aws_subnet.PROD-PUB-D.id

  tags = {
    Name     = "nat-gw-trisul"
    NameArea = "Infra"
    NameNat  = "nat-gw-trisul"
  }

}

#### Grupo de seguranca 
resource "aws_security_group" "sg-vpc-trisul" {
  name        = "sgvpctrisul"
  description = "Allow sg-vpc-trisul"
  vpc_id      = aws_vpc.trisul.id

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
    Name     = "sg-vpc-trisul"
  }
}



#Route table public
resource "aws_route_table" "rt-trisul-public" {
  vpc_id = aws_vpc.trisul.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw-trisul.id
  }

  route {
    cidr_block = "172.31.0.0/24"
    #gateway_id = aws_vpn_gateway.OracleCloud.id
    gateway_id = aws_vpn_gateway.vg_trisul.id
    #gateway_id = aws_vpn_gateway.aws_vpn_gateway.id
  }

  tags = {
    NameArea = "Infra"
    Name     = "rt-trisul-public"
  }
}

#Route table private
resource "aws_route_table" "rt-trisul-private" {
  vpc_id = aws_vpc.trisul.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw-trisul.id
  }

  tags = {
    NameArea = "Infra"
    Name     = "rt-trisul-private"
  }
}


#route table default VPC
#terraform aws associate subnet with route table PUBLIC
## Subnet PROD PUB 
resource "aws_route_table_association" "rt-prod-pub-a" {
  subnet_id      = aws_subnet.PROD-PUB-A.id
  route_table_id = aws_route_table.rt-trisul-public.id
}


resource "aws_route_table_association" "rt-prod-pub-b" {
  subnet_id      = aws_subnet.PROD-PUB-B.id
  route_table_id = aws_route_table.rt-trisul-public.id
}

resource "aws_route_table_association" "rt-prod-pub-c" {
  subnet_id      = aws_subnet.PROD-PUB-C.id
  route_table_id = aws_route_table.rt-trisul-public.id
}

resource "aws_route_table_association" "rt-prod-pub-d" {
  subnet_id      = aws_subnet.PROD-PUB-D.id
  route_table_id = aws_route_table.rt-trisul-public.id
}

resource "aws_route_table_association" "rt-prod-pub-e" {
  subnet_id      = aws_subnet.PROD-PUB-E.id
  route_table_id = aws_route_table.rt-trisul-public.id
}

#### Subnet DEV PUB
resource "aws_route_table_association" "rt-dev-pub-c" {
  subnet_id      = aws_subnet.DEV-PUB-C.id
  route_table_id = aws_route_table.rt-trisul-public.id
}

resource "aws_route_table_association" "rt-dev-pub-d" {
  subnet_id      = aws_subnet.DEV-PUB-D.id
  route_table_id = aws_route_table.rt-trisul-public.id
}

resource "aws_route_table_association" "rt-dev-pub-e" {
  subnet_id      = aws_subnet.DEV-PUB-E.id
  route_table_id = aws_route_table.rt-trisul-public.id
}

#### Subnet HML PUB
resource "aws_route_table_association" "rt-hml-pub-c" {
  subnet_id      = aws_subnet.HML-PUB-C.id
  route_table_id = aws_route_table.rt-trisul-public.id
}

resource "aws_route_table_association" "rt-hml-pub-d" {
  subnet_id      = aws_subnet.HML-PUB-D.id
  route_table_id = aws_route_table.rt-trisul-public.id
}

resource "aws_route_table_association" "rt-hml-pub-e" {
  subnet_id      = aws_subnet.HML-PUB-E.id
  route_table_id = aws_route_table.rt-trisul-public.id
}

#### Subnet HML PRIVATE
resource "aws_route_table_association" "rt-hml-prv-a" {
  subnet_id      = aws_subnet.HML-PRV-A.id
  route_table_id = aws_route_table.rt-trisul-private.id
}

resource "aws_route_table_association" "rt-hml-prv-b" {
  subnet_id      = aws_subnet.HML-PRV-B.id
  route_table_id = aws_route_table.rt-trisul-private.id
}

resource "aws_route_table_association" "rt-hml-prv-c" {
  subnet_id      = aws_subnet.HML-PRV-C.id
  route_table_id = aws_route_table.rt-trisul-private.id
}

#### Subnet DEV PRIVATE
resource "aws_route_table_association" "rt-dev-prv-a" {
  subnet_id      = aws_subnet.DEV-PRV-A.id
  route_table_id = aws_route_table.rt-trisul-private.id
}

resource "aws_route_table_association" "rt-dev-prv-b" {
  subnet_id      = aws_subnet.DEV-PRV-A.id
  route_table_id = aws_route_table.rt-trisul-private.id
}

resource "aws_route_table_association" "rt-dev-prv-c" {
  subnet_id      = aws_subnet.DEV-PRV-C.id
  route_table_id = aws_route_table.rt-trisul-private.id
}

#### Subnet PROD PRIVATE
resource "aws_route_table_association" "rt-prod-prv-a" {
  subnet_id      = aws_subnet.PROD-PRV-A.id
  route_table_id = aws_route_table.rt-trisul-private.id
}

resource "aws_route_table_association" "rt-prod-prv-b" {
  subnet_id      = aws_subnet.PROD-PRV-B.id
  route_table_id = aws_route_table.rt-trisul-private.id
}

resource "aws_route_table_association" "rt-prod-prv-c" {
  subnet_id      = aws_subnet.PROD-PRV-C.id
  route_table_id = aws_route_table.rt-trisul-private.id
}
