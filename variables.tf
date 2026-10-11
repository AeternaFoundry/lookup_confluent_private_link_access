variable "private_link_access_lookup" {
  description = <<EOT
Map of private_link_access_lookup, attributes below
Required:
    - environment (block):
        - id (required)
Optional:
    - display_name
EOT

  type = map(object({
    display_name = optional(string)
    environment = object({
      id = string
    })
  }))
}

