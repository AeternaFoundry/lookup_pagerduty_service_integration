variable "service_integration_lookup" {
  description = <<EOT
Map of service_integration_lookup, attributes below
Required:
    - integration_summary
    - service_name
EOT

  type = map(object({
    integration_summary = string
    service_name        = string
  }))
}

