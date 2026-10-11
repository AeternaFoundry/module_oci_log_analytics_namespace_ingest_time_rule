variable "log_analytics_namespace_ingest_time_rules" {
  description = <<EOT
Map of log_analytics_namespace_ingest_time_rules, attributes below
Required:
    - compartment_id
    - display_name
    - namespace
    - actions (block):
        - compartment_id (required)
        - dimensions (optional)
        - metric_name (required)
        - namespace (required)
        - resource_group (optional)
        - type (required)
    - conditions (block):
        - additional_conditions (optional, block):
            - condition_field (required)
            - condition_operator (required)
            - condition_value (required)
        - field_name (required)
        - field_operator (required)
        - field_value (required)
        - kind (required)
Optional:
    - defined_tags
    - description
    - freeform_tags
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    display_name   = string
    namespace      = string
    defined_tags   = optional(map(string))
    description    = optional(string)
    freeform_tags  = optional(map(string))
    actions = list(object({
      compartment_id = string
      dimensions     = optional(set(string))
      metric_name    = string
      namespace      = string
      resource_group = optional(string)
      type           = string
    }))
    conditions = object({
      additional_conditions = optional(list(object({
        condition_field    = string
        condition_operator = string
        condition_value    = string
      })))
      field_name     = string
      field_operator = string
      field_value    = string
      kind           = string
    })
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_namespace_ingest_time_rules : (
        length(v.actions) >= 1
      )
    ])
    error_message = "Each actions list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_namespace_ingest_time_rules : (
        alltrue([for item in v.actions : (contains([for v in ["METRIC_EXTRACTION"] : lower(v)], lower(item.type)))])
      )
    ])
    error_message = "must be one of: \"METRIC_EXTRACTION\""
  }
  validation {
    condition = alltrue([
      for k, v in var.log_analytics_namespace_ingest_time_rules : (
        contains([for v in ["FIELD"] : lower(v)], lower(v.conditions.kind))
      )
    ])
    error_message = "must be one of: \"FIELD\""
  }
}

