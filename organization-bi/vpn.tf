#customer gateway
resource "aws_customer_gateway" "Oracle" {
  bgp_asn    = 65000
  ip_address = "168.138.243.33"
  type       = "ipsec.1"

  tags = {
    Name = "Oracle"
  }
}

#Virtual private gateway
resource "aws_vpn_gateway" "Oracle" {
  vpc_id = aws_vpc.biviholding.id

  tags = {
    Name = "Oracle"
  }
}