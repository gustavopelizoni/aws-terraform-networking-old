module "vpn_gateway" {
  source  = "terraform-aws-modules/vpn-gateway/aws"
  version = "~> 2.0"

  vpn_gateway_id      = aws_vpn_gateway.vg_trisul.id
  customer_gateway_id = aws_customer_gateway.cg_trisul.id
  vpc_id              = aws_vpc.trisul.id

  vpc_subnet_route_table_count = 2
  vpc_subnet_route_table_ids   = ["rtb-0d19fe91b393a1f0c"]

  # tunnel inside cidr & preshared keys (optional)
  tunnel1_inside_cidr = var.custom_tunnel1_inside_cidr
  #tunnel2_inside_cidr   = var.custom_tunnel2_inside_cidr
  tunnel1_preshared_key = var.custom_tunnel1_preshared_key
  #tunnel2_preshared_key = var.custom_tunnel2_preshared_key
}

resource "aws_customer_gateway" "cg_trisul" {
  bgp_asn    = 65000
  ip_address = "201.31.135.210/28"
  type       = "ipsec.1"

  #tags {
  #  Name = "trisul-customer-gateway"
  #}
}

#resource "aws_vpc" "vpc" {
# ...
#}

resource "aws_vpn_gateway" "vg_trisul" {
  vpc_id = aws_vpc.trisul.id

  # ...
}