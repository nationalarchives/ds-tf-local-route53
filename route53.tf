# ------------------------------------------------------------------------------
# Private zone
# ------------------------------------------------------------------------------
resource "aws_route53_zone" "private_zone" {
    name = "${var.environment}.local"

    dynamic "vpc" {
        for_each = var.vpc_ids
        content {
            vpc_id = vpc.value
        }
    }

    tags = {
        Environment = var.environment
        Service = var.service
        Owner = var.owner
        CreatedBy = var.created_by
        CostCentre = var.cost_centre
        Terraform = "true"
    }
}
