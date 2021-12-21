resource "aws_vpc_peering_connection" "biviholding" {
  peer_owner_id = var.peer_owner_id
  peer_vpc_id   = aws_vpc.biviholding-RAIZ.id
  vpc_id        = aws_vpc.biviholding.id
}

resource "aws_vpc" "biviholding-RAIZ" {
  cidr_block = "10.250.0.0/17"

}

resource "aws_route" "rt-biviholding-private" {
  route_table_id            = "rtb-01f3c02f7a939928e"
  destination_cidr_block    = "10.251.0.0/17"
  vpc_peering_connection_id = "pcx-45ff3dc1"
  #depends_on                = [aws_route_table.testing]
}