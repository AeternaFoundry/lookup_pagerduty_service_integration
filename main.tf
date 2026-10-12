data "pagerduty_service_integration" "service_integration_lookup" {
  for_each = var.service_integration_lookup

  integration_summary = each.value.integration_summary
  service_name        = each.value.service_name
}

