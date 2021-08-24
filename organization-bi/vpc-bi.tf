#VPC biviholding
resource "aws_vpc" "biviholding" {
  cidr_block = "10.251.0.0/17"

  tags = {
    Name : "biviholding"
    NameArea : "Infra"
    NameVPC : "biviholding"
  }
}