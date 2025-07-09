variable "region" {
  default = "us-east-2"
}

variable "cluster_name" {
  description = "Nome do cluster EKS"
  type        = string
  default     = "cluster-soat"
}