output "identity_smtp_credentials_lookup_id" {
  description = "Map of id values across all identity_smtp_credentials_lookup, keyed the same as var.identity_smtp_credentials_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_smtp_credentials.identity_smtp_credentials_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_smtp_credentials_lookup_filter" {
  description = "Map of filter values across all identity_smtp_credentials_lookup, keyed the same as var.identity_smtp_credentials_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_smtp_credentials.identity_smtp_credentials_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_smtp_credentials_lookup_smtp_credentials" {
  description = "Map of smtp_credentials values across all identity_smtp_credentials_lookup, keyed the same as var.identity_smtp_credentials_lookup except keys with no smtp_credentials are omitted"
  value       = { for k, v in data.oci_identity_smtp_credentials.identity_smtp_credentials_lookup : k => v.smtp_credentials if v.smtp_credentials != null && length(v.smtp_credentials) > 0 }
}
output "identity_smtp_credentials_lookup_user_id" {
  description = "Map of user_id values across all identity_smtp_credentials_lookup, keyed the same as var.identity_smtp_credentials_lookup except keys with no user_id are omitted"
  value       = { for k, v in data.oci_identity_smtp_credentials.identity_smtp_credentials_lookup : k => v.user_id if v.user_id != null && length(v.user_id) > 0 }
}

