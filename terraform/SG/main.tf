resource "aws_security_group" "group2-sg" {
  name        = "group2-sg"
  vpc_id      = var.vpc_id
  dynamic "ingress" {
    iterator = port
    for_each = var.ingress_ports
    content {
      from_port   = port.value
      protocol    = "tcp"
      to_port     = port.value
      cidr_blocks = var.internet
    }
  }
  egress {
    from_port   = var.outbound-port
    protocol    = "-1"
    to_port     = var.outbound-port
    cidr_blocks = var.internet
  }
}