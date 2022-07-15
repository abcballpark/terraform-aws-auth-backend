resource "aws_cognito_user_pool" "main" {
  name                = var.name
  username_attributes = ["email"]

  password_policy {
    minimum_length    = 10
    require_lowercase = false
    require_numbers   = true
    require_symbols   = false
    require_uppercase = true
  }
}

resource "aws_cognito_user_pool_client" "enrollment-api" {
  name                = "enrollment-api"
  user_pool_id        = aws_cognito_user_pool.main.id
  generate_secret     = true
  explicit_auth_flows = ["ALLOW_USER_SRP_AUTH"]
}
