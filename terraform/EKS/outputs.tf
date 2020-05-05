output "endpoint" {
  value = "${aws_eks_cluster.group2-eks.endpoint}"
}

output "kubeconfig_certificate_authority_data" {
  value = "${aws_eks_cluster.group2-eks.certificate_authority.0.data}"
}