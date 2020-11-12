# ------------------------------------------------------------------------------
# Private zone
# ------------------------------------------------------------------------------
resource "aws_route53_zone" "private_zone" {
    name = "${var.environment}.local"
    vpc {
        vpc_id = var.vpc_id
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
