variable "cluster_name" {
  type        = string
  description = "Nome do cluster"
  default     = "my-cluster"
}

variable "environment" {
  type        = string
  description = "Ambiente para o qual os recursos serão instanciados"
  default     = "dev"
}

variable "node_pools" {
  type = list(object({
    name                 = string
    node_count           = number
    location_policy      = string
    total_min_node_count = number
    total_max_node_count = number
    preemptible          = bool
    machine_type         = string
    spot                 = bool
    disk_size_gb         = number
    disk_type            = string
  }))
  description = "Lista de node_pool a serem criados"
  default     = []
}
