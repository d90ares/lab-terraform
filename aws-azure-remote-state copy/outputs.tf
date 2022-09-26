output "storage_account_id" {
  value = azurerm_storage_account.first_storage_account.id
}

output "storage_account_name" {
  value = aws_s3_bucket.first_bucket.id
}