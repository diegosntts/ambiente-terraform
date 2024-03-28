module "gke_cluster" {
  source       = "./module"
  cluster_name = var.cluster_name
  environment  = var.environment
  node_pools   = var.node_pools
}
