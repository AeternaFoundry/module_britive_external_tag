output "external_tags_id" {
  description = "Map of id values across all external_tags, keyed the same as var.external_tags"
  value       = { for k, v in britive_external_tag.external_tags : k => v.id }
}
output "external_tags_attributes" {
  description = "Map of attributes values across all external_tags, keyed the same as var.external_tags"
  value       = { for k, v in britive_external_tag.external_tags : k => v.attributes }
}
output "external_tags_description" {
  description = "Map of description values across all external_tags, keyed the same as var.external_tags"
  value       = { for k, v in britive_external_tag.external_tags : k => v.description }
}
output "external_tags_external" {
  description = "Map of external values across all external_tags, keyed the same as var.external_tags"
  value       = { for k, v in britive_external_tag.external_tags : k => v.external }
}
output "external_tags_external_id" {
  description = "Map of external_id values across all external_tags, keyed the same as var.external_tags"
  value       = { for k, v in britive_external_tag.external_tags : k => v.external_id }
}
output "external_tags_identity_provider_id" {
  description = "Map of identity_provider_id values across all external_tags, keyed the same as var.external_tags"
  value       = { for k, v in britive_external_tag.external_tags : k => v.identity_provider_id }
}
output "external_tags_name" {
  description = "Map of name values across all external_tags, keyed the same as var.external_tags"
  value       = { for k, v in britive_external_tag.external_tags : k => v.name }
}
output "external_tags_requestable" {
  description = "Map of requestable values across all external_tags, keyed the same as var.external_tags"
  value       = { for k, v in britive_external_tag.external_tags : k => v.requestable }
}

