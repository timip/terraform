output "alb_dns_name" {
  value       = module.hello-world-app.alb_dns_name
  description = "The domain name of the load balancer"
}

output "asg_name" {
  value       = module.hello-world-app.asg_name
  description = "The name of the Auto Scaling Group"
}

output "alb_security_group_id" {
  value       = module.hello-world-app.alb_security_group_id
  description = "The Id of the Security Group attached to the load balancer"
}