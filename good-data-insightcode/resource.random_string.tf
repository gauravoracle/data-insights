resource "random_string" "vcn_application_dns_label" {
  length  = 8
  lower   = true
  number  = false
  special = false
  upper   = false
}

resource "random_string" "subnet_application_app_dns_label" {
  length  = 8
  lower   = true
  number  = false
  special = false
  upper   = false
}

resource "random_string" "subnet_application_db_dns_label" {
  length  = 8
  lower   = true
  number  = false
  special = false
  upper   = false
}

resource "random_string" "subnet_application_infra_dns_label" {
  length  = 8
  lower   = true
  number  = false
  special = false
  upper   = false
}

resource "random_string" "subnet_application_lb_pub_dns_label" {
  length  = 8
  lower   = true
  number  = false
  special = false
  upper   = false
}
