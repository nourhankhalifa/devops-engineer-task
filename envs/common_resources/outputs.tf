output "aws_subnet_public_id" {
  value = aws_subnet.public-subnet.id
}

output "vpc_id" {
  value = aws_vpc.public-vpc.id
}