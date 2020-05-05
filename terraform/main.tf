provider "aws" {
  region                  = var.region
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

module "jenkins_deployment" {
  source = "./EC2"
  aws_sg_id = module.sg_deployment.aws_sg_id
  jenkins_sg_id = module.sg_deployment.aws_jenkins_sg_id
  subnet_live_id = module.vpc_deployment.subnet_live_id
  subnet_test_id = module.vpc_deployment.subnet_test_id
}

module "eks_deployment" {
  region = var.region
  source = "./EKS"
  subnets   = ["${module.vpc_deployment.subnet_live_id}","${module.vpc_deployment.subnet_live2_id}"]
  secgroups = ["${module.sg_deployment.aws_sg_id}"]

}