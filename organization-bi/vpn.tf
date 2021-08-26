#customer gateway
resource "aws_customer_gateway" "Oracle" {
  bgp_asn    = 65000
  ip_address = "168.138.243.33"
  type       = "ipsec.1"

  tags = {
    Name = "Oracle"
  }
}