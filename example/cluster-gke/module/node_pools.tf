resource "google_container_node_pool" "this" {
  for_each   = { for idx, pool in var.node_pools : idx => pool }
  name       = each.value.name
  cluster    = google_container_cluster.this.id
  node_count = each.value.node_count

  autoscaling {
    location_policy      = each.value.location_policy
    total_min_node_count = each.value.total_min_node_count
    total_max_node_count = each.value.total_max_node_count
  }

  node_config {
    preemptible  = each.value.preemptible
    machine_type = each.value.machine_type
    spot         = each.value.spot
    disk_size_gb = each.value.disk_size_gb
    disk_type    = each.value.disk_type
  }
}


