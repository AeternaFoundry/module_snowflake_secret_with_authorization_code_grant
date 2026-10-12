resource "snowflake_secret_with_authorization_code_grant" "secret_with_authorization_code_grants" {
  for_each = var.secret_with_authorization_code_grants

  api_authentication              = each.value.api_authentication
  database                        = each.value.database
  name                            = each.value.name
  oauth_refresh_token             = each.value.oauth_refresh_token
  oauth_refresh_token_expiry_time = each.value.oauth_refresh_token_expiry_time
  schema                          = each.value.schema
  comment                         = each.value.comment

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

