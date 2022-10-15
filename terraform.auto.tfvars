instance_enabled = 0
domain_primary = "dns_primary"
dns_entry = {
  "DNS_DESCRIPTION"  = {
    dns_name = "entry.dns_primary"
    resolve = [ "IP" ]
    type = "A"
    ttl = 300
  },
}
