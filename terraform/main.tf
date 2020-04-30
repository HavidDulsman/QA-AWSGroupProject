provider "aws" {
  region                  = "eu-west-2"
  shared_credentials_file = "~/.aws/credentials"
  version                 = "~> 2.0"
}

module "vpc_deployment" {
  source = "./VPC"
}

module "sg_deployment" {
  source = "./SG"
  vpc_id = module.vpc_deployment.vpc_id
}

module "ec2_deployment" {
  source = "./EC2"
  vpc_security_group_id = module.sg_deployment.aws_sg_id
  subnet_live_id = module.vpc_deployment.subnet_live_id
  subnet_test_id = module.vpc_deployment.subnet_test_id
}
