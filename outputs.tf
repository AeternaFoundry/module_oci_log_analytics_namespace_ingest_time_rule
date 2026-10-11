output "log_analytics_namespace_ingest_time_rules_id" {
  description = "Map of id values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no id are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_actions" {
  description = "Map of actions values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no actions are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.actions if v.actions != null && length(v.actions) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_compartment_id" {
  description = "Map of compartment_id values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no compartment_id are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_conditions" {
  description = "Map of conditions values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no conditions are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => one(v.conditions) if v.conditions != null && length(v.conditions) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_defined_tags" {
  description = "Map of defined_tags values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no defined_tags are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_description" {
  description = "Map of description values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no description are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.description if v.description != null && length(v.description) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_display_name" {
  description = "Map of display_name values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no display_name are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_freeform_tags" {
  description = "Map of freeform_tags values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_ingest_time_rule_id" {
  description = "Map of ingest_time_rule_id values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no ingest_time_rule_id are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.ingest_time_rule_id if v.ingest_time_rule_id != null && length(v.ingest_time_rule_id) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_is_enabled" {
  description = "Map of is_enabled values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no is_enabled are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.is_enabled if v.is_enabled != null }
}
output "log_analytics_namespace_ingest_time_rules_namespace" {
  description = "Map of namespace values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no namespace are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_state" {
  description = "Map of state values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no state are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.state if v.state != null && length(v.state) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_time_created" {
  description = "Map of time_created values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no time_created are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "log_analytics_namespace_ingest_time_rules_time_updated" {
  description = "Map of time_updated values across all log_analytics_namespace_ingest_time_rules, keyed the same as var.log_analytics_namespace_ingest_time_rules except keys with no time_updated are omitted"
  value       = { for k, v in oci_log_analytics_namespace_ingest_time_rule.log_analytics_namespace_ingest_time_rules : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

