resource "aws_instance" "ec2-live-1" {
  ami           = var.ami_id
  instance_type = var.t2_micro
  key_name      = var.key_name
  subnet_id     = var.subnet_live_id
  vpc_security_group_ids = [var.vpc_security_group_id]
}

resource "aws_instance" "ec2-live-2" {
  ami           = var.ami_id
  instance_type = var.t2_micro
  key_name      = var.key_name
  subnet_id     = var.subnet_live_id
  vpc_security_group_ids = [var.vpc_security_group_id]
}

resource "aws_instance" "ec2-test-1" {
  ami           = var.ami_id
  instance_type = var.t2_micro
  key_name      = var.key_name
  subnet_id     = var.subnet_test_id
  vpc_security_group_ids = [var.vpc_security_group_id]
}

# resource "aws_elb" "group2-elb" {
#   name = "group2-elb"
#   listener {
#     instance_port     = 80
#     instance_protocol = "http"
#     lb_port           = 80
#     lb_protocol       = "http"
#   }

# }

# resource "aws_elb_attachment" "elb-attachment1" {
#   elb      = aws_elb.group2-elb.id
#   instance = aws_ec2.ec2-live-1.id
# }

# resource "aws_elb_attachment" "elb-attachment2" {
#   elb      = aws_elb.group2-elb.id
#   instance = aws_ec2.ec2-live-2.id
# }
