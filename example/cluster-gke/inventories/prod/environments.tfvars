cluster_name = "gke-prod"
environment  = "prod"
node_pools = [
  {
    name : "nodepool1",
    node_count : 4,
    location_policy : "ANY",
    total_min_node_count : 1,
    total_max_node_count : 3,
    preemptible : false,
    machine_type : "n2d-standard-2",
    spot : true,
    disk_size_gb : 100,
    disk_type : "pd-standard"
  },
  {
    name : "nodepool2",
    node_count : 4,
    location_policy : "ANY",
    total_min_node_count : 1,
    total_max_node_count : 3,
    preemptible : false,
    machine_type : "n2d-standard-2",
    spot : false,
    disk_size_gb : 100,
    disk_type : "pd-standard"
  }
]
