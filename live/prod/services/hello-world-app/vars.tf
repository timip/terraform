variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  type        = string
  default     = "org.timip.terraform-state"
}

variable "server_text" {
  description = "The text the web server should return"
  default     = "(Production) Hello, World"
  type        = string
}

variable "environment" {
  description = "The name of the environment we're deploying to"
  type        = string
  default     = "prod"
}

