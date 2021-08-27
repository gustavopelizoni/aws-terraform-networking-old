#customer gateway
resource "aws_customer_gateway" "Oracle" {
  bgp_asn    = 65000
  ip_address = "168.138.243.32" #ip gateway oracle cloud
  type       = "ipsec.1"

  tags = {
    Name = "Oracle"

  }
}

#customer gateway
resource "aws_customer_gateway" "OracleCloud" {
  bgp_asn    = 65000
 ip_address = "168.138.236.98" #ip gateway oracle cloud
  type       = "ipsec.1"

  tags = {
    Name = "OracleCloud"

  }
}

#customer gateway
resource "aws_customer_gateway" "OracleCloudNovo" {
  bgp_asn    = 65000
 ip_address = "168.138.243.143" #ip gateway oracle cloud
  type       = "ipsec.1"

  tags = {
    Name = "OracleCloudNovo"

  }
}



#Virtual private gateway
resource "aws_vpn_gateway" "Oracle" {
  vpc_id = aws_vpc.biviholding.id

  tags = {
    Name = "Oracle"
  }
}

## site to site Oracle
resource "aws_vpn_connection" "Oracle" {
  vpn_gateway_id      = aws_vpn_gateway.Oracle.id
  customer_gateway_id = aws_customer_gateway.OracleCloud.id
  type                = "ipsec.1"
  static_routes_only  = true
  #tunnel1_inside_cidr = "0.0.0.0/0"
  tunnel1_preshared_key = "7wrtqrh5HBZHD0LyXaPamWzCQt2q74lqH8UCEpz8qcIFWcv7af4DLDE8opAy29xQ"

  tags = {
    "Name" = "Oracle"
  }
}

resource "aws_vpn_connection_route" "Oracle" {
  destination_cidr_block = "172.31.0.0/24"
  vpn_connection_id      = aws_vpn_connection.Oracle.id
}