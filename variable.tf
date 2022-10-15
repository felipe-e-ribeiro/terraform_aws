variable "instance_enabled" {
  type = string
}

variable "domain_primary" {
  type = string
}

variable "dns_entry" {
  type = map(object({
    dns_name = string
    resolve  = list(string)
    type     = string
    ttl      = number
  }))
}