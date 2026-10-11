data "confluent_private_link_access" "private_link_access_lookup" {
  for_each = var.private_link_access_lookup

  display_name = each.value.display_name

  environment {
    id = each.value.environment.id
  }
}

