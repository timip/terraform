variable "db_name" {
  description = "The name to use for the database"
  type        = string
  default     = "example_database"
}

variable "db_username" {
  description = "The username of the database"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "The password for the database"
  type        = string
}
