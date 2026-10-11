output "compute_node_groups_id" {
  description = "Map of id values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no id are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_node_groups_autoscaling_policy" {
  description = "Map of autoscaling_policy values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no autoscaling_policy are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => one(v.autoscaling_policy) if v.autoscaling_policy != null && length(v.autoscaling_policy) > 0 }
}
output "compute_node_groups_creation_timestamp" {
  description = "Map of creation_timestamp values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no creation_timestamp are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.creation_timestamp if v.creation_timestamp != null && length(v.creation_timestamp) > 0 }
}
output "compute_node_groups_deletion_policy" {
  description = "Map of deletion_policy values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_node_groups_description" {
  description = "Map of description values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no description are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.description if v.description != null && length(v.description) > 0 }
}
output "compute_node_groups_initial_size" {
  description = "Map of initial_size values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no initial_size are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.initial_size if v.initial_size != null }
}
output "compute_node_groups_maintenance_policy" {
  description = "Map of maintenance_policy values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no maintenance_policy are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.maintenance_policy if v.maintenance_policy != null && length(v.maintenance_policy) > 0 }
}
output "compute_node_groups_maintenance_window" {
  description = "Map of maintenance_window values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no maintenance_window are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => one(v.maintenance_window) if v.maintenance_window != null && length(v.maintenance_window) > 0 }
}
output "compute_node_groups_name" {
  description = "Map of name values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no name are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_node_groups_node_template" {
  description = "Map of node_template values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no node_template are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.node_template if v.node_template != null && length(v.node_template) > 0 }
}
output "compute_node_groups_project" {
  description = "Map of project values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no project are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_node_groups_self_link" {
  description = "Map of self_link values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no self_link are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.self_link if v.self_link != null && length(v.self_link) > 0 }
}
output "compute_node_groups_share_settings" {
  description = "Map of share_settings values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no share_settings are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => one(v.share_settings) if v.share_settings != null && length(v.share_settings) > 0 }
}
output "compute_node_groups_size" {
  description = "Map of size values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no size are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.size if v.size != null }
}
output "compute_node_groups_zone" {
  description = "Map of zone values across all compute_node_groups, keyed the same as var.compute_node_groups except keys with no zone are omitted"
  value       = { for k, v in google_compute_node_group.compute_node_groups : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

