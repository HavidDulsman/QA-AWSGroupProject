output "vpc_id" {
  value = aws_vpc.group2-vpc.id
}
output "subnet_live_id" {
  value = aws_subnet.group2-sub-live.id
}
output "subnet_live2_id" {
  value = aws_subnet.group2-sub-live2.id
}
output "subnet_test_id" {
  value = aws_subnet.group2-sub-test.id
}