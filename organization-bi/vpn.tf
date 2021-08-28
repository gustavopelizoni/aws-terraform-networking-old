#customer gateway tunnel
resource "aws_customer_gateway" "Oracle-Cloud" {
  bgp_asn    = 65000
  ip_address = "168.138.234.215" #ip gateway oracle cloud
  type       = "ipsec.1"

  tags = {
    Name = "Oracle-Cloud"

  }
}

#Virtual private gateway
resource "aws_vpn_gateway" "OracleCloud" {
  vpc_id = aws_vpc.biviholding.id

  tags = {
    Name = "OracleCloud"
  }
}

## site to site Oracle
resource "aws_vpn_connection" "OracleCloud" {
  vpn_gateway_id      = aws_vpn_gateway.OracleCloud.id
  customer_gateway_id = aws_customer_gateway.Oracle-Cloud.id
  type                = "ipsec.1"
  static_routes_only  = true
  #tunnel1_inside_cidr = "0.0.0.0/0"
  tunnel1_preshared_key = var.tunnel1_preshared_key

  tags = {
    "Name" = "OracleCloud"
  }
}

resource "aws_vpn_connection_route" "Oracle" {
  destination_cidr_block = "172.31.0.0/24"
  vpn_connection_id      = aws_vpn_connection.OracleCloud.id
}