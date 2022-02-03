module "vpn_gateway" {
  source  = "terraform-aws-modules/vpn-gateway/aws"
  version = "~> 2.0"

  vpn_gateway_id      = aws_vpn_gateway.vg-trisul.id
  customer_gateway_id = aws_customer_gateway.cg-trisul.id
  vpc_id              = aws_vpc.vpc.trisul.id

  vpc_subnet_route_table_count = 2
  vpc_subnet_route_table_ids   = ["rtb-0c907fed7dd3f86fe", "rtb-0d19fe91b393a1f0c",]

  # tunnel inside cidr & preshared keys (optional)
  tunnel1_inside_cidr   = var.custom_tunnel1_inside_cidr
  #tunnel2_inside_cidr   = var.custom_tunnel2_inside_cidr
  tunnel1_preshared_key = var.custom_tunnel1_preshared_key
  #tunnel2_preshared_key = var.custom_tunnel2_preshared_key
}

resource "aws_customer_gateway" "cg-trisul" {
  bgp_asn    = 65000
  ip_address = "172.83.124.10"
  type       = "ipsec.1"

  tags {
    Name = "cg-trisul"
  }
}

resource "aws_vpc" "vpc" {
  # ...
}

resource "aws_vpn_gateway" "vg-trisul" {
  vpc_id = aws_vpc.vpc.trisul.id

  # ...
}