variable "environment" {}

variable "service" {}

variable "cost_centre" {}

variable "owner" {}

variable "created_by" {}

variable "vpc_ids" {
    description = "List of VPC IDs to attach the Route53 private zone to"
    type        = list(string)
    default     = []
}
