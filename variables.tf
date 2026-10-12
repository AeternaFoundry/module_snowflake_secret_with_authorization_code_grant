variable "secret_with_authorization_code_grants" {
  description = <<EOT
Map of secret_with_authorization_code_grants, attributes below
Required:
    - api_authentication
    - database
    - name
    - oauth_refresh_token
    - oauth_refresh_token_expiry_time
    - schema
Optional:
    - comment
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    api_authentication              = string
    database                        = string
    name                            = string
    oauth_refresh_token             = string
    oauth_refresh_token_expiry_time = string
    schema                          = string
    comment                         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
}

