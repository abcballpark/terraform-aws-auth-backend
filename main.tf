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