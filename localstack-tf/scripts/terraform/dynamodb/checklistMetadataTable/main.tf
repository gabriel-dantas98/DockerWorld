locals {
  tags = {
    name        = "checklistMetadataTable"
    service     = "checklist_as_code"
    environment = "prod"
  }
}

resource "aws_dynamodb_table" "checklist_as_code_db" {
  name             = var.table_name
  billing_mode     = var.billing_mode
  hash_key         = var.partition_key
  stream_enabled   = true
  stream_view_type = "NEW_IMAGE"

  attribute {
    name = var.partition_key
    type = "S"
  }

  # The other attributes are inserted by the applications themselves.

  tags = local.tags
}
