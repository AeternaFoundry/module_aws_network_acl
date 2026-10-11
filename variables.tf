variable "network_acls" {
  description = <<EOT
Map of network_acls, attributes below
Required:
    - vpc_id
Optional:
    - region
    - subnet_ids
    - tags
    - tags_all
    - egress (block):
        - action (optional)
        - cidr_block (optional)
        - from_port (optional)
        - icmp_code (optional)
        - icmp_type (optional)
        - ipv6_cidr_block (optional)
        - protocol (optional)
        - rule_no (optional)
        - to_port (optional)
    - ingress (block):
        - action (optional)
        - cidr_block (optional)
        - from_port (optional)
        - icmp_code (optional)
        - icmp_type (optional)
        - ipv6_cidr_block (optional)
        - protocol (optional)
        - rule_no (optional)
        - to_port (optional)
EOT

  type = map(object({
    vpc_id     = string
    region     = optional(string)
    subnet_ids = optional(set(string))
    tags       = optional(map(string))
    tags_all   = optional(map(string))
    egress = optional(list(object({
      action          = optional(string)
      cidr_block      = optional(string)
      from_port       = optional(number)
      icmp_code       = optional(number)
      icmp_type       = optional(number)
      ipv6_cidr_block = optional(string)
      protocol        = optional(string)
      rule_no         = optional(number)
      to_port         = optional(number)
    })))
    ingress = optional(list(object({
      action          = optional(string)
      cidr_block      = optional(string)
      from_port       = optional(number)
      icmp_code       = optional(number)
      icmp_type       = optional(number)
      ipv6_cidr_block = optional(string)
      protocol        = optional(string)
      rule_no         = optional(number)
      to_port         = optional(number)
    })))
  }))
}

