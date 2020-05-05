variable "ami_id" {
  default = "ami-0917237b4e71c5759"
}

variable "t2_medium" {
  default = "t2.medium"
}
variable "t3_small" {
  default = "t3.small"
}

variable "key_name" {
  default = "group2"
}

variable "jenkins_sg_id"{
  description = "security group for new instances and vpc"
}

variable "aws_sg_id"{
  description = "security group for live and test instances"
}

variable "subnet_live_id" {
  description = "subnet for live service"
}
variable "subnet_test_id"{
  description = "subnet for testing"
}