output "service_integration_lookup_id" {
  description = "Map of id values across all service_integration_lookup, keyed the same as var.service_integration_lookup"
  value       = { for k, v in data.pagerduty_service_integration.service_integration_lookup : k => v.id }
}
output "service_integration_lookup_integration_key" {
  description = "Map of integration_key values across all service_integration_lookup, keyed the same as var.service_integration_lookup"
  value       = { for k, v in data.pagerduty_service_integration.service_integration_lookup : k => v.integration_key }
  sensitive   = true
}
output "service_integration_lookup_integration_summary" {
  description = "Map of integration_summary values across all service_integration_lookup, keyed the same as var.service_integration_lookup"
  value       = { for k, v in data.pagerduty_service_integration.service_integration_lookup : k => v.integration_summary }
}
output "service_integration_lookup_service_name" {
  description = "Map of service_name values across all service_integration_lookup, keyed the same as var.service_integration_lookup"
  value       = { for k, v in data.pagerduty_service_integration.service_integration_lookup : k => v.service_name }
}

