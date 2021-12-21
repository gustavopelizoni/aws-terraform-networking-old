resource "aws_vpc_peering_connection" "biviholding" {
  peer_owner_id = var.peer_owner_id
  peer_vpc_id   = aws_vpc.biviholding-RAIZ.id
  vpc_id        = aws_vpc.biviholding.id
}

resource "aws_vpc" "biviholding-RAIZ" {
  cidr_block = "10.250.0.0/17"
  default = "vpc-0d51056d1c87cd1c2"
  

}

resource "aws_route" "rt-biviholding-private" {
  route_table_id            = "rtb-01f3c02f7a939928e"
  destination_cidr_block    = "10.251.0.0/17"
  vpc_peering_connection_id = "pcx-0915205db72d20a9a"
  #depends_on                = [aws_route_table.testing]
}