variable "environment"        {}
variable "vpc_id"             {}
variable "public_subnet_ids"  { type = list(string) }
variable "private_subnet_ids" { type = list(string); default = [] }

variable "alb_idle_timeout" {
  description = "ALB idle timeout in seconds"
  type        = number
  default     = 60
}

variable "container_port" {
  description = "Port the backend container listens on"
  type        = number
  default     = 8080
}

variable "container_cpu" {
  description = "Task-level CPU units (Fargate)"
  type        = number
  default     = 256
}

variable "container_memory" {
  description = "Task-level memory in MB (Fargate)"
  type        = number
  default     = 512
}

variable "aws_region" {
  description = "AWS region for regional WAF and CloudWatch resources"
  type        = string
  default     = "us-east-1"
}

variable "waf_rate_limit" {
  description = "Requests per IP allowed during the WAF evaluation window"
  type        = number
  default     = 1000
}

variable "waf_sanctioned_country_codes" {
  description = "ISO country codes blocked by the geo rule"
  type        = list(string)
  default     = ["AF", "BY", "CU", "IR", "KP", "LY", "MM", "RU", "SD", "SS", "SY", "VE", "YE", "ZW"]
}

variable "waf_log_retention_days" {
  description = "Retention period for WAF decision logs"
  type        = number
  default     = 90
}
