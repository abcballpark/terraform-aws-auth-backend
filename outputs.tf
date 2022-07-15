output "pool_id" {
  value = aws_cognito_user_pool.main.id
  description = "Identifier for Cognito user pool"
}