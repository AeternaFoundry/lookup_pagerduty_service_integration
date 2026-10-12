output "service_integration_lookup_id" {
  description = "Map of id values across all service_integration_lookup, keyed the same as var.service_integration_lookup except keys with no id are omitted"
  value       = { for k, v in data.pagerduty_service_integration.service_integration_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_integration_lookup_integration_key" {
  description = "Map of integration_key values across all service_integration_lookup, keyed the same as var.service_integration_lookup except keys with no integration_key are omitted"
  value       = { for k, v in data.pagerduty_service_integration.service_integration_lookup : k => v.integration_key if v.integration_key != null && length(v.integration_key) > 0 }
  sensitive   = true
}
output "service_integration_lookup_integration_summary" {
  description = "Map of integration_summary values across all service_integration_lookup, keyed the same as var.service_integration_lookup except keys with no integration_summary are omitted"
  value       = { for k, v in data.pagerduty_service_integration.service_integration_lookup : k => v.integration_summary if v.integration_summary != null && length(v.integration_summary) > 0 }
}
output "service_integration_lookup_service_name" {
  description = "Map of service_name values across all service_integration_lookup, keyed the same as var.service_integration_lookup except keys with no service_name are omitted"
  value       = { for k, v in data.pagerduty_service_integration.service_integration_lookup : k => v.service_name if v.service_name != null && length(v.service_name) > 0 }
}

