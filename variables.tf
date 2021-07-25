variable "module_enabled" {
  type = string
  description = "Trigger to enable/disable module."
  default     = "true"
}

variable "project" {
  type = string
  description = "Project name."
  default     = "project"
}

variable "environment" {
  type = string
  description = "Environment name."
  default     = "test"
}

variable "resource_identifier" {
  type = string
  description = "By default resource identifier is a sum of project name and environment name. This variable allows to override this with custom name."
  default     = "none"
}

variable "load_balancer_arn" {
  type = string
  description = "ARN of Load Balancer to assign this WAF"
}

variable "whitelist" {
  description = "List of IP's (in CIDR format) to whitelist"
  default     = []
  type        = list(object({ type = string, value = string }))
}

