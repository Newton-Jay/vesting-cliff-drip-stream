output "alb_dns_name" {
  description = "DNS name of the application load balancer"
  value       = aws_lb.main.dns_name
}

output "alb_zone_id" {
  description = "Route53 zone ID of the ALB (for alias records)"
  value       = aws_lb.main.zone_id
}

output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = aws_ecs_cluster.main.name
}

output "ecs_task_role_arn" {
  description = "ARN of the ECS task execution role"
  value       = aws_iam_role.ecs_exec.arn
  sensitive   = true
}

output "alb_security_group_id" {
  description = "Security group ID of the ALB"
  value       = aws_lb.main.security_groups[0]
}

output "waf_web_acl_arn" {
  description = "ARN of the regional WAF Web ACL"
  value       = aws_wafv2_web_acl.api.arn
}

output "waf_log_group_name" {
  description = "CloudWatch log group receiving WAF decisions"
  value       = aws_cloudwatch_log_group.waf.name
}

output "waf_dashboard_name" {
  description = "CloudWatch dashboard name for WAF metrics"
  value       = aws_cloudwatch_dashboard.waf.dashboard_name
}
