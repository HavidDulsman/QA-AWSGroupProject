resource "aws_instance" "test_instance" {
  ami = var.ami_id
  instance_type          = var.t3_small
  key_name               = var.key_name
  subnet_id              = var.subnet_test_id
  vpc_security_group_ids = [var.aws_sg_id]
}


resource "aws_instance" "jenkins_instance" {
  ami                    = var.ami_id
  instance_type          = var.t2_medium
  key_name               = var.key_name
  subnet_id              = var.subnet_live_id
  vpc_security_group_ids = [var.jenkins_sg_id]

  user_data = data.template_file.jenkins_install.rendered
}

data "template_file" "jenkins_install" {
template = file("/home/ubuntu/projects/QA-AWSGroupProject/terraform/EC2/jenkins_setup.sh")
}

# resource "aws_elb" "group2-elb" {
#   name            = "group2-elb"
#   subnets         = [var.subnet_live_id]
#   security_groups = [var.vpc_security_group_id]
#   listener {
#     instance_port     = 80
#     instance_protocol = "http"
#     lb_port           = 80
#     lb_protocol       = "http"
#   }
#   health_check {
#     healthy_threshold   = 10
#     unhealthy_threshold = 2
#     timeout             = 5
#     target              = "HTTP:80/"
#     interval            = 30
#   }
# }

# resource "aws_elb_attachment" "elb-attachment1" {
#   elb      = aws_elb.group2-elb.id
#   instance = aws_instance.ec2-live-1.id
# }

# resource "aws_elb_attachment" "elb-attachment2" {
#   elb      = aws_elb.group2-elb.id
#   instance = aws_instance.ec2-live-2.id
# }
