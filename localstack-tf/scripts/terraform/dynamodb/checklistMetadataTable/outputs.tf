output "aws_dynamodb_table_name" {
  value = aws_dynamodb_table.checklist_as_code_db.name
}

output "aws_dynamodb_table_arn" {
  value = aws_dynamodb_table.checklist_as_code_db.arn
}

output "aws_dynamodb_table_id" {
  value = aws_dynamodb_table.checklist_as_code_db.id
}
