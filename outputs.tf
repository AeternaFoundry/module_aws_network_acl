output "network_acls_id" {
  description = "Map of id values across all network_acls, keyed the same as var.network_acls"
  value       = { for k, v in aws_network_acl.network_acls : k => v.id if v.id != null && length(v.id) > 0 }
}
output "network_acls_arn" {
  description = "Map of arn values across all network_acls, keyed the same as var.network_acls"
  value       = { for k, v in aws_network_acl.network_acls : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "network_acls_egress" {
  description = "Map of egress values across all network_acls, keyed the same as var.network_acls"
  value       = { for k, v in aws_network_acl.network_acls : k => v.egress if v.egress != null && length(v.egress) > 0 }
}
output "network_acls_ingress" {
  description = "Map of ingress values across all network_acls, keyed the same as var.network_acls"
  value       = { for k, v in aws_network_acl.network_acls : k => v.ingress if v.ingress != null && length(v.ingress) > 0 }
}
output "network_acls_owner_id" {
  description = "Map of owner_id values across all network_acls, keyed the same as var.network_acls"
  value       = { for k, v in aws_network_acl.network_acls : k => v.owner_id if v.owner_id != null && length(v.owner_id) > 0 }
}
output "network_acls_region" {
  description = "Map of region values across all network_acls, keyed the same as var.network_acls"
  value       = { for k, v in aws_network_acl.network_acls : k => v.region if v.region != null && length(v.region) > 0 }
}
output "network_acls_subnet_ids" {
  description = "Map of subnet_ids values across all network_acls, keyed the same as var.network_acls"
  value       = { for k, v in aws_network_acl.network_acls : k => v.subnet_ids if v.subnet_ids != null && length(v.subnet_ids) > 0 }
}
output "network_acls_tags" {
  description = "Map of tags values across all network_acls, keyed the same as var.network_acls"
  value       = { for k, v in aws_network_acl.network_acls : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "network_acls_tags_all" {
  description = "Map of tags_all values across all network_acls, keyed the same as var.network_acls"
  value       = { for k, v in aws_network_acl.network_acls : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "network_acls_vpc_id" {
  description = "Map of vpc_id values across all network_acls, keyed the same as var.network_acls"
  value       = { for k, v in aws_network_acl.network_acls : k => v.vpc_id if v.vpc_id != null && length(v.vpc_id) > 0 }
}

