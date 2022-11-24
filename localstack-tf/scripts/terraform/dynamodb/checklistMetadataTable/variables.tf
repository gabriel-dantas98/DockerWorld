variable "table_name" {
  default = "checklistMetadataTable"
}

variable "partition_key" {
  default = "repository"
}

variable "billing_mode" {
  default = "PAY_PER_REQUEST"
}
