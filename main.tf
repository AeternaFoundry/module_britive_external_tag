resource "britive_external_tag" "external_tags" {
  for_each = var.external_tags

  identity_provider_id = each.value.identity_provider_id
  name                 = each.value.name
  description          = each.value.description
  requestable          = each.value.requestable

  dynamic "attributes" {
    for_each = each.value.attributes != null ? each.value.attributes : []
    content {
      attribute_name  = attributes.value.attribute_name
      attribute_value = attributes.value.attribute_value
    }
  }
}

