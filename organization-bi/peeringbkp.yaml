resource "aws_vpc_peering_connection" "owner" {
  provider = aws.owner
  vpc_id        = var.owner_vpc_id
  peer_vpc_id   = data.aws_vpc.accepter.id
  peer_owner_id = local.accepter_account_id
  
  tags = {
    Name = "peer_to_accepter"
  }

}

resource "aws_vpc_peering_connection_accepter" "accepter" {
  provider = aws.accepter
  vpc_peering_connection_id = aws_vpc_peering_connection_owner.id
  auto_accept = true
  tags = {
    Name = "peert_to_owner"
  }
  
}


resource "aws_route" "owner" {
  provider = aws.owner
  count = length(data.aws_route_tables.owner.ids)
  route_table_id = tolist(data.aws_route_tables.owner.ids)[count.index]
  destination_cidr_block = data.aws_vpc_peering_connection_owner.id
  
}

resource "aws_route" "accepter" {
  provider = aws.accepter
  count = length(data.aws_route_tables.accepter.ids)
  route_table_id = tolist(data.aws_route_tables.accepter.ids)[count.index]
  destination_cidr_block = data.aws_vpc.owner.cidr_block
  vpc_peering_connection_id = aws_vpc_peering_connection.owner.id
  

  
}

resource "aws_route" "rt-biviholding-private" {
  route_table_id            = "rtb-01f3c02f7a939928e"
  destination_cidr_block    = "10.251.0.0/17"
  vpc_peering_connection_id = "pcx-0915205db72d20a9a"
  #depends_on                = [aws_route_table.testing]
}