variable "cluster_name" {
  type        = string
  description = "Nome do cluster"
}

variable "project" {
  type        = string
  description = "Nome do cluster"
  default     = "terraform-projeto"
}

variable "region" {
  type        = string
  description = "Nome da região"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "Nome da zona"
  default     = "us-central1-a"
}

variable "location" {
  type        = string
  description = "Localização do cluster"
  default     = "us-central1"
}

variable "environment" {
  type        = string
  description = "Ambiente para o qual os recursos serão instanciados"
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
