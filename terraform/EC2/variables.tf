variable "ami_id" {
  default = "ami-0917237b4e71c5759"
}

variable "t2_micro" {
  default = "t2.micro"
}

variable "key_name" {
  default = "group2"
}

variable "vpc_security_group_id"{
  description = "security group for new instances and vpc"
}

variable "subnet_live_id" {
  description = "subnet for live service"
}
variable "subnet_test_id"{
  description = "subnet for testing"
}