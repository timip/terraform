provider "aws" {
  region = "us-west-2"
}

resource "aws_iam_user" "example" {
  for_each = toset(var.user_names)
  name     = each.value
}

output "all_users" {
  value       = values(aws_iam_user.example)[*].arn
  description = "The ARNs for all users"
}

