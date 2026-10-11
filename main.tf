resource "google_compute_node_group" "compute_node_groups" {
  for_each = var.compute_node_groups

  name               = each.value.name
  node_template      = each.value.node_template
  deletion_policy    = each.value.deletion_policy
  description        = each.value.description
  initial_size       = each.value.initial_size
  maintenance_policy = each.value.maintenance_policy
  project            = each.value.project
  zone               = each.value.zone

  dynamic "autoscaling_policy" {
    for_each = each.value.autoscaling_policy != null ? [each.value.autoscaling_policy] : []
    content {
      max_nodes = autoscaling_policy.value.max_nodes
      min_nodes = autoscaling_policy.value.min_nodes
      mode      = autoscaling_policy.value.mode
    }
  }

  dynamic "maintenance_window" {
    for_each = each.value.maintenance_window != null ? [each.value.maintenance_window] : []
    content {
      start_time = maintenance_window.value.start_time
    }
  }

  dynamic "share_settings" {
    for_each = each.value.share_settings != null ? [each.value.share_settings] : []
    content {
      dynamic "project_map" {
        for_each = share_settings.value.project_map != null ? share_settings.value.project_map : []
        content {
          id         = project_map.value.id
          project_id = project_map.value.project_id
        }
      }
      share_type = share_settings.value.share_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

