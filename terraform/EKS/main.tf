resource "aws_eks_cluster" "group2-eks" {
  name     = "group2-eks"
  role_arn = aws_iam_role.eksrole.arn

  vpc_config {
    endpoint_private_access = false
    endpoint_public_access = true
    public_access_cidrs = ["0.0.0.0/0"]
    security_group_ids = var.secgroups
    subnet_ids = var.subnets
  }

    depends_on = [
    aws_iam_role_policy_attachment.AWS_EKSClusterPolicy,
    aws_iam_role_policy_attachment.AWS_EKSServicePolicy,
  ]
}

resource "aws_iam_role" "eksrole" {
  name = "eksrole"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "eks.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "AWS_EKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.eksrole.name
}

resource "aws_iam_role_policy_attachment" "AWS_EKSServicePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSServicePolicy"
  role       = aws_iam_role.eksrole.name
}


resource "aws_eks_node_group" "group2_eks_nodegrp" {
  cluster_name    = aws_eks_cluster.group2-eks.name
  node_group_name = "Pet_Clinic_Node_Groups"
  node_role_arn   = aws_iam_role.eksrole_node.arn
  subnet_ids      = var.subnets
  instance_types  = ["t2.micro"]

  scaling_config {
    min_size     = 1
    max_size     = 3
    desired_size = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.AWS_EKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AWS_EKS_CNI_Policy,
    aws_iam_role_policy_attachment.AWS_EC2ContainerRegistryReadOnly
  ]
}

resource "aws_iam_role" "eksrole_node" {
  name = "eksrole_node"

  assume_role_policy = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "ec2.amazonaws.com"
      }
    }]
    Version = "2012-10-17"
  })
}

resource "aws_iam_role_policy_attachment" "AWS_EKSWorkerNodePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
  role       = aws_iam_role.eksrole_node.name
}

resource "aws_iam_role_policy_attachment" "AWS_EKS_CNI_Policy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  role       = aws_iam_role.eksrole_node.name
}

resource "aws_iam_role_policy_attachment" "AWS_EC2ContainerRegistryReadOnly" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
  role       = aws_iam_role.eksrole_node.name
}