variable "external_tags" {
  description = <<EOT
Map of external_tags, attributes below
Required:
    - identity_provider_id
    - name
Optional:
    - description
    - requestable
    - attributes (block):
        - attribute_name (required)
        - attribute_value (required)
EOT

  type = map(object({
    identity_provider_id = string
    name                 = string
    description          = optional(string)
    requestable          = optional(bool)
    attributes = optional(list(object({
      attribute_name  = string
      attribute_value = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.external_tags : (
        length(v.name) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.external_tags : (
        length(v.identity_provider_id) >= 1
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.external_tags : (
        v.attributes == null || alltrue([for item in v.attributes : (length(item.attribute_name) >= 1)])
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.external_tags : (
        v.attributes == null || alltrue([for item in v.attributes : (length(item.attribute_value) >= 1)])
      )
    ])
    error_message = "must not be empty"
  }
}

