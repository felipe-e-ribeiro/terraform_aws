resource "aws_route53_zone" "primary" {
  name = var.domain_primary
}

resource "aws_route53_record" "dns_entry" {
  for_each = var.dns_entry
  zone_id = aws_route53_zone.primary.zone_id
  name    = each.value.dns_name
  type    = each.value.type
  ttl     = each.value.ttl
  records = each.value.resolve
}