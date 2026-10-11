resource "oci_log_analytics_namespace_ingest_time_rule" "log_analytics_namespace_ingest_time_rules" {
  for_each = var.log_analytics_namespace_ingest_time_rules

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  namespace      = each.value.namespace
  defined_tags   = each.value.defined_tags
  description    = each.value.description
  freeform_tags  = each.value.freeform_tags

  dynamic "actions" {
    for_each = each.value.actions
    content {
      compartment_id = actions.value.compartment_id
      dimensions     = actions.value.dimensions
      metric_name    = actions.value.metric_name
      namespace      = actions.value.namespace
      resource_group = actions.value.resource_group
      type           = actions.value.type
    }
  }

  conditions {
    dynamic "additional_conditions" {
      for_each = each.value.conditions.additional_conditions != null ? each.value.conditions.additional_conditions : []
      content {
        condition_field    = additional_conditions.value.condition_field
        condition_operator = additional_conditions.value.condition_operator
        condition_value    = additional_conditions.value.condition_value
      }
    }
    field_name     = each.value.conditions.field_name
    field_operator = each.value.conditions.field_operator
    field_value    = each.value.conditions.field_value
    kind           = each.value.conditions.kind
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

