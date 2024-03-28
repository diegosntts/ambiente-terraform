cluster_name = "gke-dev"
environment  = "dev"

node_pools = [
  {
    name                 = "nodepool1",
    node_count           = 1,
    location_policy      = "ANY",
    total_min_node_count = 1,
    total_max_node_count = 2,
    preemptible          = false,
    machine_type         = "n2d-standard-2",
    spot                 = true,
    disk_size_gb         = 100,
    disk_type            = "pd-standard"
  }
]
