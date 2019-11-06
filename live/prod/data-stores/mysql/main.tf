provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket         = "org.timip.terraform-state"
    key            = "prod/data-stores/mysql/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}

module "mysql" {
  source      = "../../../../modules/data-stores/mysql"
  db_name     = var.db_name
  db_username = var.db_username
  db_password = var.db_password
}