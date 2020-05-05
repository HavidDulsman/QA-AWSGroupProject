output "aws_sg_id" {
  value = aws_security_group.group2-sg.id
}

output "aws_jenkins_sg_id" {
  value = aws_security_group.jenkins-sg.id
}