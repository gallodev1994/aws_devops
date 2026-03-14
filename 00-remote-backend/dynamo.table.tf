resource "aws_dynamodb_table" "this" {
  name         = var.remote_backend.dynamodb_table_name
  billing_mode = var.remote_backend.dynamodb_billing_mode
  hash_key     = var.remote_backend.dynamodb_hash_key

  attribute {
    name = "LockId"
    type = "S"
  }

  tags = {
    Name = var.remote_backend.dynamodb_table_name
  }
}