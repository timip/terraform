module "webserver_cluster" {
  source = "../../../../modules/services/webserver-cluster"

  cluster_name = "webservers-prod"
  db_remote_state_bucket = "org.timip.terraform-state"
  db_remote_state_key = "prod/data-stores/mysql/terraform.tfstate"
  instance_type = "c2.micro"
  min_size = 2
  max_size = 10
  enable_autoscaling = true

  custom_tags = {
    Owner = "team-foo"
    DeployedBy = "terraform"
  }

}

