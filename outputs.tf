output "cluster_endpoint" {
  description = "Endpoint do cluster EKS"
  value       = module.eks.cluster_endpoint
}

output "cluster_name" {
  description = "Nome do cluster Kubernetes"
  value       = module.eks.cluster_name
}

output "cluster_kubeconfig" {
  description = "Comando para configurar o kubectl"
  value       = "aws eks --region ${var.region} update-kubeconfig --name ${module.eks.cluster_name}"
  sensitive   = true
}

output "node_group_role_name" {
  description = "Nome do IAM Role dos nodes"
  value       = try(module.eks.eks_managed_node_groups.default.iam_role_name, "")
}