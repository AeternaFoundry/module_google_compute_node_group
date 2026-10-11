variable "compute_node_groups" {
  description = <<EOT
Map of compute_node_groups, attributes below
Required:
    - name
    - node_template
Optional:
    - deletion_policy
    - description
    - initial_size
    - maintenance_policy
    - project
    - zone
    - autoscaling_policy (block):
        - max_nodes (optional)
        - min_nodes (optional)
        - mode (optional)
    - maintenance_window (block):
        - start_time (required)
    - share_settings (block):
        - project_map (optional, block):
            - id (required)
            - project_id (required)
        - share_type (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    name               = string
    node_template      = string
    deletion_policy    = optional(string)
    description        = optional(string)
    initial_size       = optional(number)
    maintenance_policy = optional(string)
    project            = optional(string)
    zone               = optional(string)
    autoscaling_policy = optional(object({
      max_nodes = optional(number)
      min_nodes = optional(number)
      mode      = optional(string)
    }))
    maintenance_window = optional(object({
      start_time = string
    }))
    share_settings = optional(object({
      project_map = optional(list(object({
        id         = string
        project_id = string
      })))
      share_type = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

