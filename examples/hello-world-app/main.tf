provider "aws" {
  region = "us-west-2"
}

module "hello-world-app" {
  source                 = "../../modules/services/hello-world-app"
  db_remote_state_bucket = var.db_remote_state_bucket
  db_remote_state_key    = "${var.environment}/data-stores/mysql/terraform.tfstate"
  server_text            = var.server_text
  environment            = var.environment
  min_size               = 1
  max_size               = 1
  enable_autoscaling     = false
}